import React from "react";
import SearchHOC from "./SearchHOC";

const PostList = ({ data }) => {
    let renderPosts = data.map((post) => {
        return (
            <div key={post.id}>
                <p>
                    <strong>{post.title}</strong>
                </p>
            </div>
        );
    });
    return (
        <div>
            <div>{renderPosts}</div>
        </div>
    );
};

const SearchPosts = SearchHOC(PostList, "posts");

export default SearchPosts;
