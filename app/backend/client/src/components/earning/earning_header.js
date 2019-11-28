import React, { Component } from 'react';
import {
  Route,
  Link
} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import './earning.css';

class Header extends Component {
  state = {
    earning: []
  }

  componentDidMount() {
    this.getEarns();
  }

  getEarns = _ => {
    fetch('http://localhost:4000/earning')
      .then(response => response.json())
      .then(response => this.setState({ earning: response.data }))
      .catch(err => console.error(err))
  }

  getEarning = (cost, price, share) => {
    let total = (price - cost) * share;
    return total.toFixed();
  }


  // TODO: Check if total gain(green) or lose (red)
  // TODO: Edit button
  // TODO: Total of the total earning (entire row)
  renderEarning() {
    return this.state.earning.map((element, index) => {
      const { Earning_id, Stock_ticker, Cost, Price, Share } = element
      return (
        <tr key={Earning_id}>
          <td>{Stock_ticker}</td>
          <td>${Cost}</td>
          <td>${Price}</td>
          <td>{Share}</td>
          <td><div className="lose"> ${this.getEarning(Cost, Price, Share)}</div></td>
          <td><div><button type="submit" className="button-edit">Edit</button></div></td>
        </tr>
      )
    })
  }

  render() {
    return (
      <header className="masthead-1 background-home">
        <div className="side-nav">
          <Route>
            <Link to="/profile" className="side-nav-item" role="button">My Profile</Link>
            <Link to="/earning" className="side-nav-item side-nav-item-selected" role="button">My Earning</Link>
            <Link to="/fav" className="side-nav-item" role="button">Favorite List</Link>
            <Link to="/history" className="side-nav-item" role="button">Search History</Link>

            <div className="profile-container">
              <h2>My Earning</h2>

              <table className="table">
                <thead>
                  <tr className="fav-tr">
                    <th>Stock</th>
                    <th>Costs</th>
                    <th>Equity</th>
                    <th>Share</th>
                    <th>Earnings</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  {this.renderEarning()}
                </tbody>
                
              </table>
              <Link to="/manageEarning" className="button-add" role="button">+ Add New Earnings</Link>
                  
            </div>
          </Route>
        </div>
      </header>
    );
  }
}

export default Header;
