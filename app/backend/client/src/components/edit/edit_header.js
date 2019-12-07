import React, { Component } from 'react';
import {
  Route,
  Link
} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';

class Header extends Component {
  constructor(props) {
    super(props);
    this.state = {
      qResult: [],
      stockName: '',
      stockCost: '',
      stockShare: '',
      deleteStock: '',
      auth: true,
      stock: {
        stockName: '',
        stockCost: '',
        stockShare: '',
        deleteStock: '',
      }
    }
  }

  updateEarning = _ => {
    fetch(`http://localhost:4040/edit?name=${this.state.stock.stockName}&cost=${this.state.stock.stockCost}&share=${this.state.stock.stockShare}`)
      .catch(err => console.log(err))
    console.log(this.state);
    this.setState({ redirect: true });
  }

  deleteEarning = _ => {
    console.log(this.state.stock.deleteStock);
    fetch(`http://localhost:4040/deleteEarning?deleteName=${this.state.stock.deleteStock}`)
      .catch(err => console.log(err))
  }

  render() {
    const { stock } = this.state;
    return (
      <header className="masthead-1 background-home">
        <div className="side-nav">
          <Route>
            <Link to="/profile" className="side-nav-item" role="button">My Profile</Link>
            <Link to="/earning" className="side-nav-item side-nav-item-selected" role="button">My Earning</Link>
            <Link to="/fav" className="side-nav-item" role="button">Favorite List</Link>
            <Link to="/history" className="side-nav-item" role="button">Search History</Link>


            <div className="profile-container">
              <h2>&#9999; Update Your Earning</h2>
              <form>
                <table className="table">
                  <thead></thead>
                  <tbody>
                    <tr>
                      <td><div className="h5">Stock Ticker</div></td>
                      <td><input type="text" placeholder="Ex. GOOGL, FB..."
                        onChange={i => this.setState({ stock: { ...stock, stockName: i.target.value } })} /></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td><div className="h5">Stock Cost</div></td>
                      <td><input placeholder="Ex. $102.32"
                        onChange={i => this.setState({ stock: { ...stock, stockCost: i.target.value } })} /></td>
                    </tr>
                    <tr>
                      <td><div className="h5">Amount of Share</div></td>
                      <td><input placeholder="Ex. 1, 5, 10"
                        onChange={i => this.setState({ stock: { ...stock, stockShare: i.target.value } })} />
                      </td>
                    </tr>
                  </tbody>
                </table>
                <Link to="/earning" className="btn-primary btn-block button-style button-top" role="button" onClick={this.updateEarning}>Update Earning</Link>
                <table className="table">
                  <thead></thead>
                </table>
              </form>
            </div>
          </Route>
        </div>
      </header >
    );
  }
}

export default Header;
