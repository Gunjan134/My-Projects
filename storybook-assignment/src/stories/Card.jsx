import React from "react";
import { Button2 } from "./Button2";
import { Subtitle } from "./Subtitle";
import { Title } from './Title';
import './card.css';

export const Card = ({ title, detailText, subTitle1, subTitle2, price, btnText, btnAccent, width }) => {
    return (
        <div className="card" style={{ width: width }}>
            <div className="container card-container">
                <div className="card-title pt-title">
                    <Title title={title} color="blue" />
                </div>
                <div className="card-title pt-title">
                    <Title title={detailText} />
                </div>
                <div className="pt-subtitle">
                    <Subtitle text={subTitle1} />
                </div>
                <div className="card-title pt-title">
                    <Subtitle text={subTitle2} />
                </div>
                <div className="card-title pt-title d-flex">
                    <Title title={price} />
                    <Button2 label={btnText} accent={btnAccent} />
                </div>
            </div>
        </div>
    );
}