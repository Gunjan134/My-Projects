import React from "react";
import './title.css';

export const Title = ({ title, color }) => {
    return <div className="title" style={{ color: color }}>{title}</div>;
}