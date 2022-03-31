import React from "react";
import './heading.css';

export const Heading = ({ size, text, color }) => {
    return <div className="heading" style={{ fontSize: size, color: color }}>{text}</div>
}