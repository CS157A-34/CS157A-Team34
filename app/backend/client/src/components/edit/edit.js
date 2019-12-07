import React, { Component } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import NavBar from '../home/navbar_home';
import Header from './edit_header';
import Footer from '../dashboard/footer';

class Edit extends Component {
  render() {//building react method that comes inse od react component
    return (//jsx code and can return only a single parent tag
      <div className="dashboard">
        <NavBar />
        <Header />
        <Footer />

      </div>
    );
  }
}

export default Edit;
