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
          <Router>
            <div className="container"><a className="navbar-brand" href="#">StockU</a><button data-toggle="collapse" className="navbar-toggler" data-target="#navcol-1"></button>
                <div className="collapse navbar-collapse" id="navcol-1">
                  <Link to="/signin" className="btn btn-primary ml-auto" role="button">Sign In</Link>
                </div>
            </div>
          </Router>
        </nav>
    );
  }
}

export default NavBar;
