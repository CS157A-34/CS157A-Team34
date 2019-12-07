import React, { Component } from 'react';
import {
  Route,
  Link, Redirect
} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import './fav.css';

class Header extends Component {
  constructor(props) {
    super(props);
    this.state = {
      redirect: false,
      stockName: '',
      fav: [],
      stock: {
        stockName: ''
      }
    }
  }

  componentDidMount() {
    this.getFav();
  }

  getFav = _ => {
    fetch('http://localhost:4000/fav')
      .then(response => response.json())
      .then(response => this.setState({ fav: response.data }))
      .catch(err => console.error(err))
  }

  deleteFav = _ => {
    fetch(`http://localhost:4040/delete?stockName=${this.state.stock.stockName}`)
      .catch(err => console.log(err))
  }

  //check whether it's gain(green) or lose(red)
  gainOrLose = (any) => {
    if (Object.values(any) > 0) {
      return true;
    }
    else {
      return false;
    }
  }


  renderStockData() {
    if (this.state.redirect) {
      return <Redirect exact push to="/fav" />;
    }
    return this.state.fav.map((element, index) => {
      const { Stock_id, Stock_ticker, Open, Price, High, Low, Volume, Change, Change_percent } = element
      return (
        <tr key={Stock_id}>
          <td>{Stock_ticker}</td>
          <td><div className="price-text">${Price}</div></td>
          <td>{Open}</td>
          <td>{High}</td>
          <td>{Low}</td>
          <td>{Volume}</td>
          <td><div className={(this.gainOrLose({ Change }) ? 'gain' : 'lose')}>{Change}</div></td>
          <td><div className={(this.gainOrLose({ Change_percent }) ? 'gain' : 'lose')}>{Change_percent}</div></td>
        </tr>
      )
    }
    )
  }

  render() {
    const { stock } = this.state;
    return (
      <header className="masthead-1 background-home">
        <div className="side-nav">
          <Route>
            <Link to="/profile" className="side-nav-item" role="button">My Profile</Link>
            <Link to="/earning" className="side-nav-item" role="button">My Earning</Link>
            <Link to="/fav" className="side-nav-item side-nav-item-selected" role="button">Favorite List</Link>
            <Link to="/history" className="side-nav-item" role="button">Search History</Link>


            <div className="profile-container">
              <h2>My Favorite List</h2>

              <table className="table">
                <thead>
                  <tr>
                    <th>Stock</th>
                    <th>$ Price</th>
                    <th>Open</th>
                    <th>High</th>
                    <th>Low</th>
                    <th>Volumn</th>
                    <th>$Change</th>
                    <th>Change%</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  {this.renderStockData()}
                </tbody>
              </table>

              <div className="delete-container">
                <form>
                  <table className="table">
                    <thead></thead>
                    <tbody>
                      <tr>
                        <td><div className="h5">Enter the Stock Ticker You'd like to Delete: </div></td>
                        <td><input placeholder="Ex. FB, OI" onChange={i => this.setState({ stock: { ...stock, stockName: i.target.value } })} /></td>
                        <td><Link to="/home" className=" button-block button-style button-delete" role="button" onClick={this.deleteFav({redirect: true})}>Delete From Favorite List</Link></td>
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
