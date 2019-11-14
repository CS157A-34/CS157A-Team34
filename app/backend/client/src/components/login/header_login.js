import React, { Component } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import './login_box.css';

class Header extends Component {
    render() {
        return (
            <header className="masthead-1 background-signin">
                <div className="row">
                    <div className="login-dark">
                        <div className="h5-style">Log In</div>
                        <form action="auth" method="POST">
                            <div className="form-row">
                                <div className="icon-image" />
                                <input className="input-style" type="email" placeholder="  Email" />
                                <input className="input-style" type="password" placeholder="  Password" />
                                <button className="btn-primary btn-block button-style" type="submit">Log In</button>
                                <div className="text-style">Forget your password?</div>
                            </div>
                        </form>
                    </div>
                </div>
            </header>
        );
    }
}

export default Header;
