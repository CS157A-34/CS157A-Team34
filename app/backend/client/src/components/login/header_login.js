import React, { Component } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import './login_box.css';

class Header extends Component {
    render() {
        return (
            <header className="masthead-1 background-signin">
                <div className="row">
                    <div className="login-dark">
                        <text className="h5-style">Log In</text>
                        <form>
                            <div className="form-row">
                                <image className="icon-image" />
                                <input className="input-style" type="email" placeholder="  Email" />
                                <input className="input-style" type="password" placeholder="  Password" />
                                <button class="btn-primary btn-block button-style" type="submit">Log In</button>
                                <text className="text-style">Forget your password?</text>
                            </div>
                        </form>
                    </div>
                </div>

            </header>
        );
    }
}

export default Header;
