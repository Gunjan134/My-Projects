import React from "react";
import { Button2 } from "./Button2";

export default {
    title: 'Button2',
    component: Button2
};

const Template = (args) => <Button2 {...args} />;

export const Label = Template.bind({});
Label.args = {
    label: 'Sample button'
}

export const Accent = Template.bind({});
Accent.args = {
    label: 'SUBMIT',
    accent: 'green'
}