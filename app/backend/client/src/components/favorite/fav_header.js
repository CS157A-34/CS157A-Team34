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
      .then(response => this.setState({ fav: response.data }))
      .catch(err => console.error(err))
  }

  deleteFav = (any) => {
    let temp_id = Object.values(any)
    fetch(`http://localhost:4040/delete?stockID=${temp_id}`)
      .catch(err => console.log(err))
    // this.setState({redirect: true});
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

  renderStockData() {
    return this.state.fav.map((element, index) => {
      const { Stock_id, Stock_ticker, Open, Closing, High, Low, Price, Volume, Change, Change_percent } = element
      return (
        <tr key={Stock_id}>
          {/* TODO: 1.Should link to Stock company page 
                    2. Delete from list*/}
          <td><Link to="/search" role="button">{Stock_ticker}</Link></td>
          <td>{Open}</td>
          <td>{Closing}</td>
          <td>{High}</td>
          <td>{Low}</td>
          <td>{Price}</td>
          <td>{Volume}</td>
          <td><div className={(this.gainOrLose({Change})? 'gain': 'lose')}>{Change}</div></td>
          <td><div className={(this.gainOrLose({Change_percent})? 'gain': 'lose')}>{Change_percent}</div></td>
          {/* <td><Link to="/home" type="submit" className="button-delete" onClick={this.deleteFav({Stock_id})}>Delete</Link></td> */}
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
            <Link to="/fav" className="side-nav-item side-nav-item-selected" role="button">Favorite List</Link>
            <Link to="/history" className="side-nav-item" role="button">Search History</Link>


            <div className="profile-container">
              <h2>My Favorite List</h2>

              <table className="table">
                <thead>
                  <tr>
                    <th>Stock</th>
                    <th>Open</th>
                    <th>Closing</th>
                    <th>High</th>
                    <th>Low</th>
                    <th>Price</th>
                    <th>Volumn</th>
                    <th>Change$</th>
                    <th>Change%</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  {this.renderStockData()}
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
