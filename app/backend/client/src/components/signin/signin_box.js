import React, { Component } from 'react';
import axios from 'axios';
import styles from './signin_box.css';
import 'bootstrap/dist/css/bootstrap.min.css';

class SignIn extends Component {
  state = {
    users: []
  }
  componentDidMount() {
    this.getUsers();
  }

  getUsers = _ => {
    axios.get('/SignIn')
      .then((data) => {
        console.log(data.data.User);
        this.setState({ users: data.data.User });
      })
      // .then(({response}) => this.setState({users: response.users}))
      .catch(error => console.log(error));
  }
  //showUsers = user => <div key={user.User_id}>{user.User_name}{user.User_email}</div>
  render() {//building react method that comes inse od react component
    const { users } = this.state;
    return (//jsx code and can return only a single parent tag
      // <div className="App">
          <div className="box">
            <h6 className="header">Sign In Box</h6>
            <text className="text">Enter your Email</text>
            <input type="text" className="input"/>
            <text className="text">Password</text>
            <input type="text" className="input"/>
            <div className="button">Sign In</div>
            <div className="lead">TEST!!!!!!!!!!!</div>
          </div>
          
          
      // </div>
    );
  }
}

export default SignIn;
