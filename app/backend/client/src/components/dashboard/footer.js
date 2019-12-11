import React, { Component } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';

class Footer extends Component {
    render() {
    return (
        <footer className="footer bg-light">
            <div className="container">
                <div className="row">
                    <div className="col-lg-6 my-auto h-100 text-center text-lg-left">
                        <ul className="list-inline mb-2">
                            <li className="list-inline-item">About</li>
                            <li className="list-inline-item"><span>⋅</span></li>
                            <li className="list-inline-item">Contact</li>
                            <li className="list-inline-item"><span>⋅</span></li>
                            <li className="list-inline-item">Terms of &nbsp;Use</li>
                            <li className="list-inline-item"><span>⋅</span></li>
                            <li className="list-inline-item">Privacy Policy</li>
                            <li className = "list-inline-item" align = "right">Team Members: 
                            <ul> Sheren Shih</ul>
                            <ul>Liam Lacuna</ul>
                            <ul>Sachin Shah</ul>
                            </li>
                        </ul>
                        <p className="text-muted small mb-4 mb-lg-0">© StockU 2019. All Rights Reserved.</p>
                    </div>
                    
                </div>
            </div>
        </footer>
    );
    }
}

export default Footer;
