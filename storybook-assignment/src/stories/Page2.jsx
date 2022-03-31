import React from "react";
import { Header2 } from "./Header2";
import { Heading } from "./Heading";
import { SearchBox } from './SearchBox';
import { Card } from "./Card";
import { Footer } from "./Footer";
import './Page2.css';

export const Page2 = () => {
    return (
        <div className="page-layout">
            <Header2 />
            <hr />
            <div className="body">
                <SearchBox />
                <div className="search-results"><Heading size="0.75rem" text="SEARCH RESULTS:" /></div>
                <div className="d-flex pb-1">
                    <Card title="Indigo" detailText="Flight Details:" subTitle1="Bom to Del" subTitle2="2:00PM to 4:00PM" price="Rs. 6475" btnText="Buy" btnAccent="royalblue" width="33%" />
                    <Card title="Vistara" detailText="Flight Details:" subTitle1="Bom to Del" subTitle2="5:00PM to 7:00PM" price="Rs. 8546" btnText="Buy" btnAccent="royalblue" width="33%" />
                    <Card title="Go Air" detailText="Flight Details:" subTitle1="Bom to Del" subTitle2="6:00PM to 8:00PM" price="Rs. 5789" btnText="Buy" btnAccent="royalblue" width="33%" />
                </div>
            </div>
            <Footer />
        </div>
    );
}