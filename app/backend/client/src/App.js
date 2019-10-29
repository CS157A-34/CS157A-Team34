import React from 'react';
import UserTest from  './components/user/user_test';
import SignIn from './components/signin/signin_box';
import NavBar from './components/navbar/navbar'
import './App.css';

function App() {
  return (
    <div className="App">
      <UserTest />
      <SignIn />
      <NavBar />
    </div>
  );
}

export default App;
