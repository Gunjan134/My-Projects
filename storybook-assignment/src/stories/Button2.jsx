import React from "react";
import './button.css';

export const Button2 = ({ label, accent }) => {
    return (
        accent ?
            <button type="button" className="storybook-btn" style={{ backgroundColor: accent }}>{label}</button>
            : <button type="button">{label}</button>
    );
}