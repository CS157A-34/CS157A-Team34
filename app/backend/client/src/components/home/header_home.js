import React, { Component } from 'react';
import {
    Route,
    Link
} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import './homepage.css';


class Header extends Component {
    render() {
        return (
            <header className=" masthead text-white text-center background-dashboard">

                <div className="background-dashboard">
                    <div className="row">

                        <div className="col-xl-9 mx-auto">
                            <h1 className="mb-5">Welcome! Select any page below to start!</h1>


                        </div>
                        <div className="col-md-10 col-lg-8 col-xl-7 mx-auto">

                            <form>
                                <div className="form-row">
                                    <Route>

                                        <Link to="/profile" className="btn btn-primary btn-block btn-lg" role="button">My Profile</Link>
                                        <Link to="/earning" className="btn btn-primary btn-block btn-lg" role="button">My Earning</Link>
                                        <Link to="/fav" className="btn btn-primary btn-block btn-lg" role="button">Favorite List</Link>
                                        <Link to="/history" className="btn btn-primary btn-block btn-lg" role="button">Search History</Link>
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
