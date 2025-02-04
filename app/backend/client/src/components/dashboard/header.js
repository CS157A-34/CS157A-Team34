import React, { Component } from 'react';
import { Route, Link } from 'react-router-dom'
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
                                    <Route>
                                        <Link to="/signup" className="btn btn-primary btn-block btn-lg" role="button">Sign up!</Link>
                                    </Route>
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
