import React from "react";
// import ReactDOM from "react-dom";
import "./index.css";
import App from "./App";
import { createRoot } from "react-dom/client";

// ReactDOM.render(<App />, document.getElementById('root'));

// function AppWithCallbackAfterRender() {
// 	useEffect(() => {
// 		console.log("rendered");
// 	});

// 	return <App />;
// }

const container = document.getElementById("root");
const root = createRoot(container);
root.render(<App />);
