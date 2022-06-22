import React, { useState } from "react";
import Item from "./Item";

function List() {
    const [items] = useState(["Item 1", "Item 2", "Item 3"]);
    return (
        <ul>
            {items.map((item) => (
                <Item key={item} name={item} />
            ))}
        </ul>
    );
}

export default List;
