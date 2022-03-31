import React from "react";
import { Heading } from "./Heading";
import { InputBox } from "./InputBox";
import { Dropdown } from "./Dropdown";
import { Button2 } from "./Button2";
import './SearchBox.css';

export const SearchBox = () => {
    return (
        <div className="bg-grey">
            <div className="container">
                <div className="d-flex">
                    <div>
                        <div className="label pb-1"><Heading text="Source:" size="0.75rem" /></div>
                        <InputBox type="text" />
                    </div>
                    <div>
                        <div className="label pb-1"><Heading text="Destination:" size="0.75rem" /></div>
                        <InputBox type="text" />
                    </div>
                    <div>
                        <div className="label pb-1"><Heading text="No. of Passengers:" size="0.75rem" /></div>
                        <Dropdown options={[1, 2, 3, 4, 5]} />
                    </div>
                    <div className="d-flex-col">
                        <Button2 label="SUBMIT" accent="#218838" />
                        <div className="mt-1"><Button2 label="RESET" accent="#dc3545" /></div>
                    </div>
                </div>
            </div>
        </div>
    );
}