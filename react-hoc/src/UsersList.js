import React from "react";
import SearchHOC from "./SearchHOC";

const UsersList = ({ data }) => {
    let renderUsers = data.map((user) => {
        return (
            <div key={user.id}>
                <p>
                    <strong>{user.name}</strong>
                </p>
            </div>
        );
    });
    return (
        <div>
            <div>{renderUsers}</div>
        </div>
    );
};

const SearchUsers = SearchHOC(UsersList, "users");

export default SearchUsers;
