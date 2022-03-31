import React from "react";
import { Card } from "./Card";

export default {
    title: 'Card',
    component: Card
};

const Template = (args) => <Card {...args} />

export const Default = Template.bind({});

Default.args = {
    title: 'Indigo',
    detailText: 'Flight Details:',
    subTitle1: 'Bom to Del',
    subTitle2: '2:00PM to 4:00PM',
    price: 'Rs. 6475',
    btnText: 'Buy',
    btnAccent: 'blue',
    width: 'auto'
}