import React, { Component } from 'react';
import {
    Route,
    Link,
    Redirect
} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import './login_box.css';

class Header extends Component {
    constructor(props){
        super(props);
        this.state = {
            qResult: [],
            email:'',
            password:'',
            auth: false,
            user:{
              email:'',
              password:''
            }
        }
    }

    signIn = _ => {
        console.log(this.state.user.email);
        fetch(`http://localhost:4040/signin?email=${this.state.user.email}&password=${this.state.user.password}`)
            .catch(err => console.log(err))
        console.log(this.state);
        this.setState({redirect:true});
    }

    render() {
        const {user} = this.state;
         if(this.state.redirect){
            console.log('Successfully logged in')
            return <Redirect exact push to ="/home" />;
        }
        return (
            <header className="masthead-1 background-signin">
                <div className="row">
                    <div className="login-dark">
                        <div className="h5-style">Log In</div>
                        <form>
                            <div className="form-row">
                                <div className="icon-image" />
                                <input className="input-style" type="email" placeholder="  Your Email" onChange={i=> this.setState({user:{...user,email: i.target.value}})}/>
                                <input className="input-style" type="password" placeholder="  Your Password" onChange={i=> this.setState({user:{...user,password: i.target.value}})}/>
                                <Route>
                                    <Link to="/home" className="btn-primary btn-block button-style" role="button" onClick={this.signIn}>Log In</Link>
                                    <Link to="/" className="text-style" role="button">Forget your Password?</Link>
                                </Route>
                            </div>
                        </form>
                    </div>
                </div>
            </header>
        );
    }
}

export default Header;
