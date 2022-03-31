import React from "react";
import { Title } from "./Title";

export default {
    title: 'Title',
    component: Title
};

const Template = (args) => <Title {...args} />

export const Default = Template.bind({});
Default.args = {
    title: 'Sample title goes here'
}

export const Custom = Template.bind({});
Custom.args = {
    title: 'Sample title goes here',
    color: 'blue'
};