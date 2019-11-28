import React, { Component } from 'react';
import {
  Route,
  Link,
  Redirect
} from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import { Dropdown, DropdownButton } from 'react-bootstrap'

class NavBar extends Component {
  constructor(props) {
    super(props);
    this.state = {
      qResult: [],
      key: '',
      auth: true,
      search: {
        key: '',
      }
    }
  }

  searchKey = _ => {
    // console.log(this.state.search.key);
    fetch(`http://localhost:4040/search?key=${this.state.search.key}`)
      .catch(err => console.log(err))
    // console.log(this.state);
    this.setState({ redirect: true });
  }

  render() {
    const { search } = this.state;
    // if (this.state.redirect) {
    //   console.log('Successfully find search key')
    //   return <Redirect exact push to="/home" />;
    // }

    return (
      <nav className="navbar navbar-light navbar-expand bg-light navigation-clean">
        <div className="container">
          <Route>
            <Link to="/home" className="navbar-brand" role="button">StockU</Link>
            <div className="col-md-10 col-lg-8 col-xl-7 mx-auto search">
              <form>
                <div className="form-row">
                  <div className="col-12 col-md-9 mb-2 mb-md-0">
                    <input className="form-control form-control-lg" type="text" placeholder="Search Stock Here..." onChange={i => this.setState({ search: { ...search, key: i.target.value } })} />
                  </div>
                  <div className="col-12 col-md-3">
                    <Link to="/search" className="btn btn-block btn-lg icon-search" role="button" onClick={this.searchKey} /></div>
                </div>
              </form>
            </div>

            <div className="collapse navbar-collapse" id="navcol-1"></div>
            <DropdownButton className="dropdown-style" title="Hello Champion!">
              <Dropdown.Item><Link to="/home" role="button">Home</Link></Dropdown.Item>
              <Dropdown.Item><Link to="/profile" role="button">My Profile</Link></Dropdown.Item>
              <Dropdown.Item><Link to="/earning" role="button">My Earning</Link></Dropdown.Item>
              <Dropdown.Item><Link to="/fav" role="button">Favortie List</Link></Dropdown.Item>
              <Dropdown.Item><Link to="/history" role="button">Search History</Link></Dropdown.Item>
              <Dropdown.Divider></Dropdown.Divider>
              <Dropdown.Item><Link to="/" role="button">Logout</Link></Dropdown.Item>
            </DropdownButton>
          </Route>
        </div>
      </nav>
    );
  }
}

export default NavBar;
