import React from 'react';
import UserTest from  './components/user/user_test';
import SignIn from './components/signin/signin_box';
import DashBoard from './components/dashboard/dashboard';
import './App.css';

function App() {
  return (
    <div className="App">
      {/* <UserTest /> */}
      <DashBoard />
    </div>
  );
}

export default App;
