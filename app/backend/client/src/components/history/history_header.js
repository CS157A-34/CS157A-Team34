import React, { Component } from 'react';
import {
  Route,
  Link
} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';

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

  renderHistoryData() {
    return this.state.history.map((element, index) => {
      const { Search_id, Search_date, Search_time, Stock_ticker, Open, Closing, High, Low, Price, Volume, Change, Change_percent } = element
      return (
        <tr key={Search_id}>
          {/* TODO: 1.Should link to Stock company page */}
          <td>{Search_date}</td>
          <td>{Search_time}</td>
          <td> <Link to="/search" role="button">{Stock_ticker}</Link></td>
          <td>{Open}</td>
          <td>{Closing}</td>
          <td>{High}</td>
          <td>{Low}</td>
          <td>{Price}</td>
          <td>{Volume}</td>
          <td>{Change}</td>
          <td>{Change_percent}</td>
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
                    <th>Search Date</th>
                    <th>Time</th>
                    <th>Stock</th>
                    <th>Open</th>
                    <th>Closing</th>
                    <th>High</th>
                    <th>Low</th>
                    <th>Price</th>
                    <th>Volumn</th>
                    <th>Change$</th>
                    <th>Change%</th>
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
