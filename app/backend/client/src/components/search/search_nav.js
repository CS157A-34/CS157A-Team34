import React, { Component } from 'react';
import {
  Route,
  Link,
} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import { Dropdown, DropdownButton } from 'react-bootstrap';
import "./search.css";

class NavBar extends Component {
  render() {
    return (
      <nav className="navbar navbar-light navbar-expand bg-light navigation-clean">
        <div className="container">
          <Route>
            <Link to="/home" className="navbar-brand" role="button">StockU</Link>
            <div className="col-md-10 col-lg-8 col-xl-7 mx-auto search">
              <form>
                <div className="form-row">
                
                    <Link to="/home" className="button-back " role="button">&#8592; Go back to search</Link></div>
              
              </form>
            </div>

            <div className="collapse navbar-collapse" id="navcol-1"></div>
            <DropdownButton className="dropdown-style" title="Hello Champion!">
              <Dropdown.Item><Link to="/home" role="button">Home</Link></Dropdown.Item>
              <Dropdown.Item><Link to="/profile" role="button">My Profile</Link></Dropdown.Item>
              <Dropdown.Item><Link to="/earning" role="button">My Earning</Link></Dropdown.Item>
              <Dropdown.Item><Link to="/fav" role="button">Favortie List</Link></Dropdown.Item>
              <Dropdown.Item><Link to="/history" role="button">Search History</Link></Dropdown.Item>
              <Dropdown.Divider></Dropdown.Divider>
              <Dropdown.Item><Link to="/" role="button">Logout</Link></Dropdown.Item>
            </DropdownButton>
          </Route>
        </div>
      </nav>
    );
  }
}

export default NavBar;
