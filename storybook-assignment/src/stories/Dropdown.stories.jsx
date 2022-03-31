import React from "react";
import { Dropdown } from "./Dropdown";

export default {
    title: 'Dropdown',
    component: Dropdown
};

const Template = (args) => <Dropdown {...args} />;

export const Default = Template.bind({});
Default.args = {
    options: [
        1, 2, 3, 4, 5
    ]
};