import React from 'react';
import {Link} from 'react-router-dom';

function NavBar (){
    return (
        <div>
          <ul id="nav">
            <li><a href="#">Home</a></li>
            <li><a href="#">Sign-in</a></li>
          </ul>
        </div>
    );
}
        
export default NavBar;
