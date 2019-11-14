import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import { Route, Link, BrowserRouter as Router } from 'react-router-dom'
import App from './App';
import SignIn from './components/login/login_box';
import SignUp from './components/signup/signup_box';
import * as serviceWorker from './serviceWorker';


const routing = (
   
    <Router>
        <div>
            {/* <UserTest /> <DashBoard />*/}
            <Route exact path="/" component={App} />
            <Route path="/signin" component={SignIn} />
            <Route path="/signup" component={SignUp} />
            {/* <Home /> */}
            {/* <Profile /> */}
            {/* <Earning /> */}
            {/* <Manage /> */}
        </div>
    </Router>
)

ReactDOM.render(routing, document.getElementById('root'));

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();

