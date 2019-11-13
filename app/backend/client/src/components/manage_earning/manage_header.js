import React, { Component } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';

class Header extends Component {
  render() {
    return (
      <header className="masthead-2 background-home">

        <div className="profile">

          <div className="side-nav">
            <button className="side-nav-item">My Profile</button>
            <button className="side-nav-item side-nav-item-selected">My Earning</button>
            <button className="side-nav-item">Favorite List</button>
          </div>

          <div className="profile-container">
            <h2>Manage Earning</h2>
            <div className="input-text">Stock Name
              <input className="input-box" placeholder="Ex. APPL, GOOGL"></input>
            </div>
            <div className="input-text">Stock Cost
              <input className="input-box" placeholder="Ex. $102.32"></input>
            </div>
            <div className="input-text">Stock Equity
              <input className="input-box" placeholder="Ex. $102.32"></input>
            </div>
            <div className="input-text">Amount of Share
              <input className="input-box" placeholder="Ex. 1, 5, 10"></input>
            </div>
            <button className="button-add" type="submit">Submit</button>
          </div>


        </div>


      </header >
    );
  }
}

export default Header;
