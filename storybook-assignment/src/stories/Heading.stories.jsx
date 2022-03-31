import React from 'react';

import { Heading } from "./Heading";

export default {
    component: Heading,
    title: 'Heading'
};

const Template = (args) => <Heading {...args} />

export const Default = Template.bind({});
Default.args = {
    text: 'I\'m inside heading!'
};

export const Small = Template.bind({});
Small.args = {
    text: 'I\'m inside heading!',
    size: '0.75rem',
    color: '#6a0dad'
};

export const Large = Template.bind({});
Large.args = {
    text: 'I\'m inside heading!',
    size: '2rem',
    color: '#6a0dad'
};

export const Accent = Template.bind({});
Accent.args = {
    text: 'I\'m inside heading!',
    size: '1rem',
    color: '#6a0dad'
}