import React, { Component } from 'react';
import axios from 'axios';

class UserTest extends Component {
  state = {
    users:[]
  }
  componentDidMount(){
    this.getUsers();
  }

  /*
  Using axios to link to the User method in app.js instead of express, 
  */

  getUsers = _ => {
        axios.get('/User')
        .then((data) => {
      this.setState({users: data.data.User});
    })
    .catch(error => console.log(error));
  }
  showUsers = user => <div key={user.User_id}>{user.User_name}{user.User_email}</div>
  render() {//building react method that comes inse od react component
    const { users } = this.state;
    return (//jsx code and can return only a single parent tag
      <div className="App">
        {users.map(this.showUsers)}
      </div>
    );
  }
}

export default UserTest;
