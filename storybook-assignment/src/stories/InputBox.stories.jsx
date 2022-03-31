import React from "react";
import { InputBox } from "./InputBox";

export default {
    title: 'Input Box',
    component: InputBox
};

const Template = (args) => <InputBox {...args} />

export const Text = Template.bind({});
Text.args = {
    type: 'text'
};

export const Number = Template.bind({});
Number.args = {
    type: 'number'
};
