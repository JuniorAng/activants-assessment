import React, { useState, useEffect } from "react";
import SushiContainer from "./containers/SushiContainer";
import Table from "./containers/Table";
import SushiWallet from "./containers/SushiWallet";

// Endpoint!
const API = "https://localhost:3001/api/Sushi/GetSushis";
const custAPI = "https://localhost:3001/api/Customer/InsertCustomer";

const startState = {
	allSushis: [],
	startIndex: 0,
	bank: 106,
	eatenSushi: [],
};

export const App = () => {
	const [sushis, setSushis] = useState(startState);

	useEffect(() => {
		// fetch(API)
		// 	.then((res) => res.json())
		// 	.then((allSushis) => {
		// 		setSushis({ ...sushis, allSushis: allSushis });
		// 	});

		const fetchSushiList = async () => {
			await fetch(API)
				.then((res) => res.json())
				.then((allSushis) => {
					setSushis({ ...sushis, allSushis: allSushis });
				});
		};
		fetchSushiList();
	}, []);

	const activePageContent = () => {
		/*Please come up with a logic to display 4 sushis at a time */
		return sushis.allSushis.slice(sushis.startIndex, sushis.startIndex + 4);
	};

	const moreSushis = () => {
		/*Please come up with a logic to allow users to see the next 4 sushis */
		if (
			sushis.startIndex < sushis.allSushis.length - 1 &&
			sushis.startIndex + 4 < sushis.allSushis.length
		) {
			setSushis({ ...sushis, startIndex: sushis.startIndex + 4 });
		} else {
			setSushis({ ...sushis, startIndex: 0 });
		}
		return sushis.allSushis.slice(sushis.startIndex, sushis.startIndex + 4);
	};

	const goBack = () => {
		/*Please come up with a logic to allow users to see the previous 4 sushis */
		if (sushis.startIndex >= 0 && sushis.startIndex - 4 > 0) {
			setSushis({ ...sushis, startIndex: sushis.startIndex - 4 });
		} else {
			setSushis({ ...sushis, startIndex: sushis.allSushis.length - 4 });
		}
		return sushis.allSushis.slice(sushis.startIndex, sushis.startIndex - 4);
	};

	const updateSushis = (id, price) => {
		/*Please come up with a logic prompt users on the following:

      1) If sushi has already been eaten, display an alert that shows "Sushi has been eaten!"
      2) If user's bank balance is less than the price of the sushi selected, display an alert that shows "Insufficient funds!"
      3) Only when the above 2 conditions are satisfied, allow users to eat the sushi. When the sushi is eaten, the sushi will only show
          an empty plate in its original place and there will be an additional empty plate on the table. Please refer to the gif for 
          described behaviour.    
    */
		if (sushis.bank >= price) {
			setSushis({
				...sushis,
				bank: sushis.bank - price,
				eatenSushi: sushis.eatenSushi.concat(id),
			});
			alert("Sushi has been eaten!");
		} else {
			alert("Insufficient funds!");
		}
	};

	const addCustomer = (customer) => {
		if (customer.amount > 0) {
			setSushis({
				...sushis,
				bank: parseInt(sushis.bank) + parseInt(customer.amount),
			});

			alert("Sushi Wallet has been topup!");
			const requestOptions = {
				method: "POST",
				headers: { "Content-Type": "application/json" },
				body: JSON.stringify({
					fullName: customer.fullName,
					email: customer.email,
					amount: customer.amount,
				}),
			};
			fetch(custAPI, requestOptions)
				.then((response) => response.json())
				.then((data) => {
					console.log(data);
				});
		}
	};

	return (
		<div className="app">
			<SushiContainer
				sushis={activePageContent()}
				moreSushis={moreSushis}
				goBack={goBack}
				eatSushi={updateSushis}
				eatenSushi={sushis.eatenSushi}
			/>
			<Table sushiPlate={sushis.eatenSushi} bank={sushis.bank} />
			<SushiWallet bank={sushis.bank} customer={addCustomer} />
		</div>
	);
};

export default App;
