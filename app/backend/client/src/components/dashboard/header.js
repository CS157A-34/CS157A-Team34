import React, { Component } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import './dashboard.css';

class Header extends Component {
  render() {
    return (
        <header className="masthead text-white text-center background-dashboard">
            <div className="overlay"></div>
            <div className="background-dashboard">
                <div className="row">
                    <div className="col-xl-9 mx-auto">
                        <h1 className="mb-5">Manage your personal stock list and revenue!</h1>
                    </div>
                    <div className="col-md-10 col-lg-8 col-xl-7 mx-auto">
                        <form>
                            <div className="form-row">
                                <div className="col-12 col-md-9 mb-2 mb-md-0"><input className="form-control form-control-lg" type="email" placeholder="Enter your email..." /></div>
                                <div className="col-12 col-md-3"><button className="btn btn-primary btn-block btn-lg" type="submit">Sign up!</button></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </header>
    );
  }
}

export default Header;
