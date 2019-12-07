import React, { Component } from 'react';
import {
  Route,
  Link
} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import './earning.css';

class Header extends Component {
  constructor(props) {
    super(props);
    this.state = {
      redirect: false,
      stockName: '',
      earning: [],
      stock: {
        stockName: ''
      }
    }
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

  getEditStock = _ => {
    console.log(this.state.stock.stockName);
    fetch(`http://localhost:4040/edit?stockName=${this.state.stock.stockName}`)
      .catch(err => console.log(err))
  }

  getEarning = (cost, price, share) => {
    let total = (price - cost) * share;
    return total.toFixed(2);
  }

  //check whether it's gain(green) or lose(red)
  gainOrLose = (any) => {
    if (Object.values(any) > 0) {
      console.log("true?");
      return true;
    }
    else {
      return false;
    }
  }

  renderEarning() {
    return this.state.earning.map((element, index) => {
      const { Earning_id, Stock_ticker, Cost, Price, Share } = element
      let tempEarn = this.getEarning(Cost, Price, Share);
      return (
        <tr key={Earning_id}>
          <td>{Stock_ticker}</td>
          <td>${Cost}</td>
          <td><div className="price-text">${Price}</div></td>
          <td>{Share}</td>
          <td><div className={(this.gainOrLose({ tempEarn }) ? 'gain' : 'lose')}>{tempEarn}</div></td>
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
                    <th>$ Equity</th>
                    <th>Share</th>
                    <th>Earnings</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  {this.renderEarning()}
                </tbody>

              </table>
              <div className="delete-container">
                <form>
                  <table className="table">
                    <thead></thead>
                    <tbody>
                      <tr>
                        <td><Link to="/manageEarning" className="btn-primary btn-block button-style button-add" role="button">&#10010; Add A New Earning</Link></td>
                        <td><Link to="/edit" className="btn-primary btn-block button-style button-add" role="button">&#9999; Edit Exist Earning</Link></td>
                      </tr>
                    </tbody>
                  </table>
                </form>
              </div>
            </div>
          </Route>
        </div>
      </header>
    );
  }
}

export default Header;
