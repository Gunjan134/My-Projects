import "./App.css";
import SearchPosts from "./PostList";
import SearchUsers from "./UsersList";

function App() {
    return (
        <div className="App">
            <h2>Higher Order Component</h2>
            <div className="section">
                <div>
                    <SearchUsers />
                </div>
                <div>
                    <SearchPosts />
                </div>
            </div>
        </div>
    );
}

export default App;
