import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import { Route, BrowserRouter as Router } from 'react-router-dom'
import App from './App';
import SignIn from './components/login/login_box';
import SignUp from './components/signup/signup_box';
import Home from './components/home/homepage';
import Profile from './components/profile/profile';
import Earning from './components/earning/earning';
import Manage from './components/manage_earning/manage';
import Favorite from './components/favorite/favorite';
import Search from './components/search/search';
import History from './components/history/history';
import * as serviceWorker from './serviceWorker';



const routing = (
   
    <Router>
        <div>
            {/* <UserTest /> <DashBoard />*/}
            <Route exact path="/" component={App} />
            <Route path="/signin" component={SignIn} />
            <Route exact path="/signup" component={SignUp} />
            <Route path="/home" component={Home} />
            <Route path="/profile" component={Profile} />
            <Route path="/earning" component={Earning} />
            <Route path="/manage+earning" component={Manage} />
            <Route path="/fav" component={Favorite} />
            <Route path="/search" component={Search} />
            <Route path="/history" component={History} />

        </div>
    </Router>
)

ReactDOM.render(routing, document.getElementById('root'));

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();

