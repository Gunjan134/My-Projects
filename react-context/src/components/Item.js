import React, { useContext } from "react";
import { ThemeContext } from "./MainApp";

function Item(props) {
    const theme = useContext(ThemeContext);
    return <li style={{ color: theme.color, backgroundColor: theme.bgColor }}>{props.name}</li>;
}

export default Item;
