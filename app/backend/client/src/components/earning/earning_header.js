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
      .then(response => this.setState({earning: response.data}))
      .catch(err => console.error(err))
  }

  getEarning = (costs, price, share) => {
    let total = costs - price * share;
    return total.toFixed();
  }

  renderTicker = ({Earning_id, Stock_ticker}) => <div key={Earning_id}>{Stock_ticker}</div>;
  renderCosts = ({Earning_id, Costs}) => <div key={Earning_id}>{Costs}</div>;
  renderPrice = ({Earning_id, Price}) => <div key={Earning_id}>{Price}</div>;
  renderShare = ({Earning_id, Share}) => <div key={Earning_id}>{Share}</div>;
  renderEarning = ({Earning_id, Costs, Price, Share}) => <div key={Earning_id}>{this.getEarning(Costs, Price, Share)}</div>;
  renderEdit = ({stock_id}) => <div><button type="submit" className="button-edit">Edit</button></div>;

  render() {
    const {earning} = this.state;
    return (
      <header className="masthead-1 background-home">
        <div className="side-nav">
          <Route>
            <Link to="/profile" className="side-nav-item" role="button">My Profile</Link>
            <Link to="/earning" className="side-nav-item side-nav-item-selected" role="button">My Earning</Link>
            <Link to="/fav" className="side-nav-item" role="button">Favorite List</Link>


            <div className="profile-container">
              <h2>My Earning</h2>

              <table className="table">
                <thead>
                  <tr className="fav-tr">
                    <th>Stock</th>
                    <th>Costs</th>
                    <th>Price</th>
                    <th>Share</th>
                    <th>Earnings</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody className="list-body">
                  <tr className="fav-tr">
                    <td className="fav-td">{earning.map(this.renderTicker)}</td>
                    <td className="fav-td">{earning.map(this.renderCosts)}</td>
                    <td className="fav-td">{earning.map(this.renderPrice)}</td>
                    <td className="fav-td">{earning.map(this.renderShare)}</td>
                    <td className="fav-td">{earning.map(this.renderEarning)}</td>
                    <td className="fav-td">{earning.map(this.renderEdit)}</td>
                  </tr>
                </tbody>

              </table>
              <Link to="/manage+earning" className="button-add" role="button">Add New Earnings</Link>
            </div>
          </Route>
        </div>
      </header>
    );
  }
}

export default Header;
