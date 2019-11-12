import React, { Component } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import { Button, Navbar } from 'react-bootstrap'

class NavBar extends Component {
  render() {
    return (
      <nav className="navbar navbar-light navbar-expand bg-light navigation-clean">
        <div className="container"><a className="navbar-brand" href="#">StockU</a><button data-toggle="collapse" className="navbar-toggler" data-target="#navcol-1"></button>
          <div className="collapse navbar-collapse" id="navcol-1"><a className="btn btn-primary ml-auto" role="button" href="#">Sign In</a></div>
        </div>
      </nav>
    );
  }
}

export default NavBar;
