import React, { Component } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import { Button, Navbar, Dropdown, DropdownButton } from 'react-bootstrap'

class NavBar extends Component {
  render() {
    return (
      <nav className="navbar navbar-light navbar-expand bg-light navigation-clean">
        <div className="container"><a className="navbar-brand" href="#">StockU</a><button data-toggle="collapse" className="navbar-toggler" data-target="#navcol-1"></button>
          <div className="collapse navbar-collapse" id="navcol-1"></div>
          <DropdownButton className="dropdown-style" title="Hello Champion!">
            <Dropdown.Item href="#/action-1">My Profile</Dropdown.Item>
            <Dropdown.Item href="#/action-2">Settings</Dropdown.Item>
            <Dropdown.Divider></Dropdown.Divider>
            <Dropdown.Item href="#/action-3">Logout</Dropdown.Item>
          </DropdownButton>


        </div>
      </nav>
    );
  }
}

export default NavBar;
