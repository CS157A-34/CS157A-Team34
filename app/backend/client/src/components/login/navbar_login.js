import React, { Component } from 'react';
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link
} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import { Button, Navbar } from 'react-bootstrap'

class NavBar extends Component {
  render() {
    return (
      <nav className="navbar navbar-light navbar-expand bg-light navigation-clean">
        <Route>
          <div className="container">
            <Link to="/" className="navbar-brand" role="button">StockU</Link>
            <h4 className="h4-style">Welcome Back!</h4>
            <div className="collapse navbar-collapse" id="navcol-1">
              <Link to="/signup" className="btn btn-primary ml-auto" role="button">Create a New Account</Link>
            </div>
          </div>
        </Route>
      </nav>
    );
  }
}

export default NavBar;
