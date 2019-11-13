import React from 'react';
import UserTest from  './components/user/user_test';
import SignIn from './components/login/login_box';
import SignUp from './components/signup/signup_box';
import DashBoard from './components/dashboard/dashboard';
import Home from './components/home/homepage';
import Profile from './components/profile/profile';
import './App.css';

function App() {
  return (
    <div className="App">
      {/* <UserTest /> <DashBoard />*/}
      {/* <DashBoard /> */}
      <SignIn />
      {/* <SignUp /> */}
       {/* <Home /> */}
    
    </div>
  );
}

export default App;
