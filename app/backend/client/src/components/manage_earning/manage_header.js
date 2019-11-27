import React, { Component } from 'react';
import {
  Route,
  Link
} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';

class Header extends Component {
  render() {
    return (
      <header className="masthead-1 background-home">
        <div className="side-nav">
          <Route>
            <Link to="/profile" className="side-nav-item" role="button">My Profile</Link>
            <Link to="/earning" className="side-nav-item side-nav-item-selected" role="button">My Earning</Link>
            <Link to="/fav" className="side-nav-item" role="button">Favorite List</Link>
            <Link to="/history" className="side-nav-item" role="button">Search History</Link>
          </Route>

          {/* TODO: ADD new earning */}
          <div className="profile-container">
            <h2>Manage Earning</h2>
            <table className="table">
              <thead></thead>
              <tbody>
                <tr>
                  <td><div className="h5">Stock Name</div></td>
                  <td><input placeholder="Ex. APPL, GOOGL" /></td>
                  <td></td>
                </tr>
                <tr>
                  <td><div className="h5">Stock Cost</div></td>
                  <td><input placeholder="Ex. $102.32" /></td>
                </tr>
                <tr>
                  <td><div className="h5">Amount of Share</div></td>
                  <td><input placeholder="Ex. 1, 5, 10" /></td>
                </tr>
              </tbody>
            </table>
            <button className="button-add" type="submit">Submit</button>
          </div>


        </div>


      </header >
    );
  }
}

export default Header;
