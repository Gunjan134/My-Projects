import React from "react";
import { Image } from "./Image";
import Colors from './assets/colors.svg';
import StackAlt from './assets/stackalt.svg';

export default {
    title: 'Image',
    component: Image
};

const Template = (args) => <Image {...args} />

export const Source = Template.bind({});
Source.args = {
    src: Colors,
    altText: ''
}

export const AltText = Template.bind({});
AltText.args = {
    src: StackAlt,
    altText: 'Stack of colors'
}