import React, { Component } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import './homepage.css';


class Header extends Component {
    render() {
        return (
            <header className="masthead-2 background-home">
                <div className="col-md-10 col-lg-8 col-xl-7 mx-auto search">
                    <form>
                        <div className="form-row">
                            <div className="col-12 col-md-9 mb-2 mb-md-0"><input className="form-control form-control-lg" type="search" placeholder="Search Stock Here..." /></div>
                            <div className="col-12 col-md-3"><button className="btn btn-block btn-lg icon-search" type="search" /></div>
                        </div>
                    </form>
                    <div className="list" />
                </div>

            </header >
        );
    }
}

export default Header;
