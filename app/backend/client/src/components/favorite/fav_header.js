import React, { Component } from 'react';
import {
  Route,
  Link
} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import './fav.css';

class Header extends Component {
  state = {
    fav: []
  }

  componentDidMount() {
    this.getFav();
  }

  getFav = _ => {
    fetch('http://localhost:4000/fav')
    .then(response => response.json())
    .then(response => this.setState({fav: response.data}))
    .catch(err => console.error(err) )
  }

  renderTicker = ({Stock_id, Stock_ticker}) => <div key={Stock_id}>{Stock_ticker}</div>;
  renderDailyHigh = ({Stock_id, Daily_high}) => <div key={Stock_id}>{Daily_high}</div>;
  renderDailyLow = ({Stock_id, Daily_low}) => <div key={Stock_id}>{Daily_low}</div>;
  renderClosingPrice = ({Stock_id, Closing_price}) => <div key={Stock_id}>{Closing_price}</div>;
  renderTradingVolume = ({Stock_id, Trading_volume}) => <div key={Stock_id}>{Trading_volume}</div>;


  render() {
    const {fav} = this.state;
    return (
      <header className="masthead-1 background-home">
        <div className="side-nav">
          <Route>
            <Link to="/profile" className="side-nav-item" role="button">My Profile</Link>
            <Link to="/earning" className="side-nav-item" role="button">My Earning</Link>
            <Link to="/fav" className="side-nav-item side-nav-item-selected" role="button">Favorite List</Link>

            <div className="profile-container">
              <h2>My Favorite List</h2>

              <table className="table">
                <thead>
                  <tr>
                    <th>Stock</th>
                    <th>High</th>
                    <th>Low</th>
                    <th>Volumn</th>
                    <th>Closing</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>{fav.map(this.renderTicker)}</td>
                    <td>{fav.map(this.renderDailyHigh)}</td>
                    <td>{fav.map(this.renderDailyLow)}</td>
                    <td>{fav.map(this.renderTradingVolume)}</td>
                    <td>{fav.map(this.renderClosingPrice)}</td>
                  </tr>
                </tbody>
                <button type="submit" className="button-delete">Edit</button>

              </table>
              {/* <Link to="/manage+earning" className="button-add" role="button">Add New Earnings</Link> */}
            </div>
          </Route>
        </div>
      </header>
    );
  }
}

export default Header;
