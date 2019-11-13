import React, { Component } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import './profile.css';
import NavBar from '../login/navbar_login';


class Header extends Component {
  render() {
    return (
      <header className="masthead-2 background-home">

        <div className="profile">

          <div className="side-nav">
            <div className="side-nav-item">My Profile</div>
            <div className="side-nav-item">My Earning</div>
            <div className="side-nav-item">Favorite List</div>
          </div>

          
          <div className="profile-container">
            <text className="profile-text">First Name</text>
            
          </div>

          {/* <div className="profile-container"></div>
          <table>
            <thead>
              <tr>
                <th>#</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Username</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>@fat</td>
              </tr>
              <tr>
                <td>3</td>
                <td colSpan="2">Larry the Bird</td>
                <td>@twitter</td>
              </tr>
            </tbody>
            </table> */}
        </div>


      </header >
    );
  }
}

export default Header;
