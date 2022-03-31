import React from "react";
import './dropdown.css';

export const Dropdown = ({ options }) => {
    return (
        <select>
            {options.map(
                option => <option key={option}>{option}</option>
            )}
        </select>
    )
}