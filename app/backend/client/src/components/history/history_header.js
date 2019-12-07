import React, { Component } from 'react';
import {
  Route,
  Link
} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import './history.css';


class Header extends Component {
  state = {
    history: []
  }

  componentDidMount() {
    this.getHistory();
  }

  getHistory = _ => {
    fetch('http://localhost:4000/history')
      .then(response => response.json())
      .then(response => this.setState({ history: response.data }))
      .catch(err => console.error(err))
  }

  //check whether it's gain(green) or lose(red)
  gainOrLose = (any) => {
    if(Object.values(any) > 0) {
      return true;
    }
    else {
      return false;
    }
  }

  renderHistoryData() {
    return this.state.history.map((element, index) => {
      const { Search_id, Search_time, Stock_ticker, Open, Price, High, Low, Change, Change_percent } = element
      return (
        <tr key={Search_id}>
          <td>{Stock_ticker}</td>
          <td><div className="price-text">${Price}</div></td>
          <td>{Open}</td>
          <td>{High}</td>
          <td>{Low}</td>
          <td><div className={(this.gainOrLose({Change})? 'gain': 'lose')}>{Change}</div></td>
          <td><div className={(this.gainOrLose({Change_percent})? 'gain': 'lose')}>{Change_percent}</div></td>
          <td>{Search_time}</td>
        </tr>
      )
    }
    )
  }

  render() {
    return (
      <header className="masthead-1 background-home">
        <div className="side-nav">
          <Route>
            <Link to="/profile" className="side-nav-item" role="button">My Profile</Link>
            <Link to="/earning" className="side-nav-item" role="button">My Earning</Link>
            <Link to="/fav" className="side-nav-item" role="button">Favorite List</Link>
            <Link to="/history" className="side-nav-item side-nav-item-selected" role="button">Search History</Link>

            <div className="profile-container">
              <h2>Search History</h2>

              <table className="table">
                <thead>
                  <tr>
                    <th>Stock</th>
                    <th>$ Price</th>
                    <th>Open</th>
                    <th>High</th>
                    <th>Low</th>
                    <th>$Change</th>
                    <th>Change%</th>
                    <th>Search Date & Time</th>
                  </tr>
                </thead>
                <tbody>
                  {this.renderHistoryData()}
                </tbody>
              </table>
            </div>
          </Route>
        </div>
      </header>
    );
  }
}

export default Header;
