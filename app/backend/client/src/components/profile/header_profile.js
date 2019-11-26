import React, { Component } from 'react';
import {
  Route,
  Link
} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import './profile.css';


class Header extends Component {
  state = {
    user: []
  }

  componentDidMount() {
    this.getUser();

  }

  getUser = _ => {
    fetch('http://localhost:4000/profile')
    .then(response => response.json())
    .then(response => this.setState({user: response.data}))
    .catch(err => console.error(err) )
  }

  renderEmail = ({User_name, User_email, User_password}) => <div key={User_name}>{User_email}</div>;
  renderName = ({User_name, User_email, User_password}) => <div key={User_email}>{User_name}</div>;

  render() {
    const {user} = this.state;
    return (
      <header className="masthead-1 background-home">
        <div className="side-nav">
          <Route>
            <Link to="/profile" className="side-nav-item side-nav-item-selected" role="button">My Profile</Link>
            <Link to="/earning" className="side-nav-item" role="button">My Earning</Link>
            <Link to="/fav" className="side-nav-item" role="button">Favorite List</Link>
          </Route>
          <div className="profile-container">
            <h2>Profile</h2>
            

            <div className="profile-text">Name</div>
            <div className="profile-box">{user.map(this.renderName)}</div>

            {/* <div className="profile-text">Last Name</div>
            <div className="profile-box">Shih</div> */}

            <div className="profile-text">Email Address</div>
            <div className="profile-box">{user.map(this.renderEmail)}</div>

          </div>
        </div>
      </header >
    );
  }
}

export default Header;
