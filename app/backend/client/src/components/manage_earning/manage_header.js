import React, { Component } from 'react';
import {
  Route,
  Link
} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';

class Header extends Component {
  constructor(props){
    super(props);
    this.state = {
      qResult: [],
      stockName: '',
      stockCost: '',
      stockShare: '',
      auth: true,
      stock:{
        stockName: '',
        stockCost: '',
        stockShare: '',
      }
    }
  }

  manageEarning = _ => {
    fetch(`http://localhost:4040/manage?name=${this.state.stock.stockName}&cost=${this.state.stock.stockCost}&share=${this.state.stock.stockShare}`)
            .catch(err => console.log(err))
    this.setState({ redirect: true });
  }

  render() {
    const {stock} = this.state;
    return (
      <header className="masthead-1 background-home">
        <div className="side-nav">
          <Route>
            <Link to="/profile" className="side-nav-item" role="button">My Profile</Link>
            <Link to="/earning" className="side-nav-item side-nav-item-selected" role="button">My Earning</Link>
            <Link to="/fav" className="side-nav-item" role="button">Favorite List</Link>
            <Link to="/history" className="side-nav-item" role="button">Search History</Link>
          </Route>

          <div className="profile-container">
            <h2>&#10010; Add an Earning</h2>
            <form>
              <table className="table">
                <thead></thead>
                <tbody>
                  <tr>
                    <td><div className="h5">Stock Ticker</div></td>
                    <td><input type="text" placeholder="Ex. GOOGL, FB..." 
                    onChange={i=> this.setState({stock:{...stock,stockName: i.target.value}})} /></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td><div className="h5">Stock Cost</div></td>
                    <td><input placeholder="Ex. $102.32"
                    onChange={i=> this.setState({stock:{...stock,stockCost: i.target.value}})} /></td>
                  </tr>
                  <tr>
                    <td><div className="h5">Amount of Share</div></td>
                    <td><input placeholder="Ex. 1, 5, 10" 
                    onChange={i=> this.setState({stock:{...stock,stockShare: i.target.value}})} />
                    </td>
                  </tr>
                </tbody>
              </table>
              <Route>
                <Link to="/earning" className="btn-primary btn-block button-style" role="button" onClick={this.manageEarning}>Submit</Link>
              </Route>
            </form>
          </div>
        </div>
      </header >
    );
  }
}

export default Header;
