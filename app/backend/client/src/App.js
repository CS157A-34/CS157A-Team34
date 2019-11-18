import React from 'react';
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link
} from "react-router-dom";
import UserTest from  './components/user/user_test';
import SignIn from './components/login/login_box';
import SignUp from './components/signup/signup_box';
import DashBoard from './components/dashboard/dashboard';
import Home from './components/home/homepage';
import Profile from './components/profile/profile';
import Earning from './components/earning/earning';
import Manage from './components/manage_earning/manage';

class App extends React.Component {

  state = {
    users:[]
    }
    componentDidMount(){
    this.getUsers();
    
    }
    
    getUsers = _ => {
    fetch('http://localhost:3000')
    .then(response => console.log(response))//response.json())
    .then(({response}) => this.setState({users: 'response.users'}))
    .catch(error => console.log(error));
    }
    /*showUsers = user => {user.username}*/

  render(){
    return (
      /*<DashBoard />*/
      <SignUp />
    );
  }
}

export default App;
