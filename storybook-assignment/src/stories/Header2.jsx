import React from "react";
import { Heading } from "./Heading";
import { Image } from "./Image";
import Colors from './assets/colors.svg';

export const Header2 = () => {
    return (
        <header>
            <div className="d-flex">
                <Heading size="2rem" text="Flight Booking System" color="#6a0dad" />
                <Image src={Colors} altText="aeroplane" />
            </div>
        </header>
    );
};