import React, { Component } from 'react';
import {
  Route,
  Link
} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import './search.css';

class Header extends Component {
  state = {
    search: []
  }

  componentDidMount() {
    this.getSearch();
  }

  getSearch = _ => {
    fetch('http://localhost:4000/serachResult')
      .then(response => response.json())
      .then(response => this.setState({ search: response.data }))
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

  renderStockTicker = ({ Stock_id, Stock_ticker }) => <div key={Stock_id}>{Stock_ticker}</div>;
  renderStockName = ({ Stock_id, Stock_name }) => <div key={Stock_id}>{Stock_name}</div>;

  renderDailyData() {
    return this.state.search.map((element, index) => {
      const { Stock_id, Open, Closing, High, Low, Price, Volume, Change, Change_percent,
      } = element
      return (
        <tr key={Stock_id}>
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
    })
  }

  renderPastData() {
    return this.state.search.map((element, index) => {
      const { Stock_id, Wk_change,Wk_percent,Mth_change,Mth_percent,Qt_change,Qt_percent,Half_change,Half_percent,Year_change,Year_percent}
      = element
      return (
        <tr key={Stock_id}>
          <td><div className={this.gainOrLose({Wk_change})? 'gain': 'lose'}>{Wk_change}</div></td>
          <td><div className={(this.gainOrLose({Wk_percent})? 'gain': 'lose')}>{Wk_percent}</div></td>
          <td><div className={(this.gainOrLose({Mth_change})? 'gain': 'lose')}>{Mth_change}</div></td>
          <td><div className={(this.gainOrLose({Mth_percent})? 'gain': 'lose')}>{Mth_percent}</div></td>
          <td><div className={(this.gainOrLose({Qt_change})? 'gain': 'lose')}>{Qt_change}</div></td>
          <td><div className={(this.gainOrLose({Qt_percent})? 'gain': 'lose')}>{Qt_percent}</div></td>
          <td><div className={(this.gainOrLose({Half_change})? 'gain': 'lose')}>{Half_change}</div></td>
          <td><div className={(this.gainOrLose({Half_percent})? 'gain': 'lose')}>{Half_percent}</div></td>
          <td><div className={(this.gainOrLose({Year_change})? 'gain': 'lose')}>{Year_change}</div></td>
          <td><div className={(this.gainOrLose({Year_percent})? 'gain': 'lose')}>{Year_percent}</div></td>
        </tr>
      )
    })
  }

  render() {
    const { search } = this.state;
    return (
      <header className="masthead-1 background-home">
        <div className="side-nav">

          <div className="side-nav-item h2">Search Result</div>

          <div className="profile-container">
            <h2>{search.map(this.renderStockTicker)} </h2>
            <h5>{search.map(this.renderStockName)} </h5>
            <h4>Today </h4>

            <table className="table">
              <thead>
                <tr>
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
                {this.renderDailyData()}
              </tbody>
            </table>

            <h4>Past Changes</h4>
            <table className="table">
              <thead>
                <tr>
                  <th>1 Week</th>
                  <th>Change%</th>
                  <th>1 Month</th>
                  <th>Change%</th>
                  <th>3 Months</th>
                  <th>Change%</th>
                  <th>6 Months</th>
                  <th>Change%</th>
                  <th>1 year</th>
                  <th>Change%</th>
                </tr>
              </thead>
              <tbody>
                {this.renderPastData()}
              </tbody>
            </table>

            {/* TODO: Add to my list -> Database: `Save` table */}
            <h4><Link to="/manage+earning" className="button-add" role="button">+ Add To My List</Link></h4>
          </div>

        </div>
      </header>
    );
  }
}

export default Header;
