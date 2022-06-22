import React, { createContext } from "react";
import List from "./List";

export const ThemeContext = createContext();

function MainApp() {
    const theme = { color: "red", bgColor: "yellow" };

    return (
        <ThemeContext.Provider value={theme}>
            <List />
        </ThemeContext.Provider>
    );
}

export default MainApp;
