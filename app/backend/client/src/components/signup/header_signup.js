import React, { Component } from 'react';
import {Route, Link, Redirect} from 'react-router-dom';
import 'bootstrap/dist/css/bootstrap.min.css';
import './signup_box.css';

class Header extends Component {
    constructor(props){
        super(props);
        this.state = {
          qResult: [],
          email:'',
          password:'',
          name: '',
          auth: false,
          user:{
            name:'',
            email:'',
            password:''
          }
        }
      }

      signUp = _=>{
        fetch(`http://localhost:4040/signup?username=${this.state.user.name}&email=${this.state.user.email}&password=${this.state.user.password}`)
            .catch(err => console.err(err))
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
                        <div className="h5-style">Create account</div>
                        <form>
                            <div className="form-row">
                                <div className="" />
                                {/* <input className="input-style" type="First Name" placeholder=" Enter first name" />
                                <input className="input-style" type="Last Name" placeholder= "Enter Last Name" /> */}
                                <input className="input-style" type="text" name="fname" placeholder=" Your Name " onChange={i=> this.setState({user:{...user,name: i.target.value}})}/>
                                <input className="input-style" type="email" placeholder="  Your Email" onChange={i=> this.setState({user:{...user,email: i.target.value}})}/>
                                <input className="input-style" type="password" placeholder="  Your Password" onChange={i=> this.setState({user:{...user,password: i.target.value}})}/>
                                {/* <div className="btn-primary btn-block button-style" role="button" onClick={this.signUp}>Sign Up</div> */}
                                <Route>
                                    <Link to="/home" className="btn-primary btn-block button-style" role="button" onClick={this.signUp}>Sign Up</Link>
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