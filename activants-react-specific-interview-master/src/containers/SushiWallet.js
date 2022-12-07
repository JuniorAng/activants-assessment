import {
	Modal,
	Box,
	Typography,
	TextField,
	Button,
	Stack,
} from "@mui/material";
import React, { Fragment, useState } from "react";

const SushiWallet = (props) => {
	const style = {
		position: "absolute",
		top: "50%",
		left: "50%",
		transform: "translate(-50%, -50%)",
		width: 400,
		bgcolor: "background.paper",
		border: "2px solid #000",
		boxShadow: 24,
		p: 4,
	};

	const [modalOpen, setModalOpen] = useState(false);
	const [customer, setCustomer] = useState({
		fullName: "",
		email: "",
		amount: "",
	});

	const handleFullName = (event) => {
		setCustomer({ ...customer, fullName: event.target.value });
	};
	const handleEmail = (event) => {
		setCustomer({ ...customer, email: event.target.value });
	};
	const handleAmount = (event) => {
		setCustomer({ ...customer, amount: event.target.value });
	};

	const submit = () => {
		if (
			customer.fullName.trim().length > 0 &&
			customer.email.trim().length > 0 &&
			customer.amount.trim().length > 0
		) {
			if (customer.amount > 100) {
				alert("Top up amount cannot be more than $100.");
				return;
			}
			if (/^\w+([-]?\w+)*@\w+([-]?\w+)*(\.\w{2,3})+$/.test(customer.email)) {
				props.customer(customer);
				setModalOpen(false);
			} else {
				alert("Please enter correct email.");
			}
		} else {
			alert("Please enter all details.");
		}
	};
	return (
		<Fragment>
			<div className="wallet">
				<div className="wallet-button" onClick={() => setModalOpen(true)}></div>
				<div>Sushi Wallet</div>
			</div>
			<Modal
				open={modalOpen}
				onClose={() => {
					setModalOpen(false);
				}}
				aria-labelledby="modal-modal-title"
				aria-describedby="modal-modal-description"
			>
				<Box sx={style}>
					<Typography id="modal-modal-title" variant="h6" component="h2">
						Sushi Wallet
					</Typography>
					<Typography id="modal-modal-description" sx={{ mt: 1 }}>
						You have: ${props.bank} remaining!
					</Typography>

					<Typography id="modal-modal-description" sx={{ mt: 3, mb: 1 }}>
						Top Up Now!
					</Typography>
					<TextField
						id="fullName"
						label="Full Name"
						variant="outlined"
						required
						onChange={handleFullName}
						sx={{ mb: 1, width: "100%" }}
					/>
					<TextField
						id="email"
						label="Email"
						variant="outlined"
						type="email"
						required
						onChange={handleEmail}
						sx={{ mb: 1, width: "100%" }}
					/>
					<TextField
						id="amount"
						label="Amount $"
						variant="outlined"
						type="number"
						required
						onChange={handleAmount}
						sx={{ mb: 1, width: "100%" }}
					/>
					<Stack spacing={2} direction="row">
						<Button
							variant="contained"
							onClick={() => {
								submit();
							}}
						>
							Submit
						</Button>
						<Button
							variant="outlined"
							onClick={() => {
								setModalOpen(false);
							}}
						>
							Cancel
						</Button>
					</Stack>
				</Box>
			</Modal>
		</Fragment>
	);
};

export default SushiWallet;
