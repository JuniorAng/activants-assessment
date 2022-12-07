import React from "react";

const Sushi = (props) => {
	return (
		<div className="sushi">
			<div
				className="plate"
				onClick={() =>
					props.eatenSushi.includes(props.displaySushi.id)
						? alert("This is empty plate")
						: props.eatSushi(props.displaySushi.id, props.displaySushi.price)
				}
			>
				{
					/* Tell me if this sushi has been eaten! You can use the following image tag inside the condition you will be creating.*/
					props.eatenSushi.includes(props.displaySushi.id) ? null : (
						<img src={props.displaySushi.img_url} width="100%" alt="" />
					)
				}
			</div>
			<h4 className="sushi-details">
				{props.displaySushi.name} - ${props.displaySushi.price}
			</h4>
		</div>
	);
};

export default Sushi;
