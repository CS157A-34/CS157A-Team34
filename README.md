# CS157ATeam34
Team repository for Team 34 group project 

## Project Overview
 StockU is a web-based application which can handle user/client input and report back to the user all relevant information regarding a certain company’s stock.
 Include Functions like: 
 * Search for Stock Information
 * View Past Search Results
 * Add Stock to Watchlist(aka Favorite List)
 * Delete Stock from Watchlist(aka Favorite List)
 * Record Stock Earnings
 * Edit Stock Earnings


## Getting started 

### Prerequisites
You need [**Node.js**](https://nodejs.org/en/) prior to installing.
* Install Node.js
    * On Windows, Linux and MacOS, install the latest [Node version](https://nodejs.org/en/download/) from the Node.js website. 
    
### Set Up Database Schema, Table and Data
* The schema should called `StockWeb`. If the schema name is changed, make sure to change it under `app.js`.
* Go to `/app/backend/client/src/database_setup/` and run the `StockWeb.sql` in MySQL Workbrench or Terminal
* `init.sql` will be creating the tables only (no data insert). 
* Make sure the **Safe Mode** is `OFF`.
    * To Check **Safe Mode** is ON or OFF:
    ``` sql
     mysql> SHOW VARIABLES LIKE '%safe_updates%';
     +------------------+-------+
     | Variable_name    | Value |
     +------------------+-------+
     | sql_safe_updates | OFF   |
     +------------------+-------+
     1 row in set (0.00 sec)
    ```
    * If the **Safe Mode** is ON, run the sql command below:
    ``` sql
     SET SQL_SAFE_UPDATES=0;
    ```

## Installing

With all the prerequisites installed, clone this repository with

`git clone https://github.com/CS157A-34/CS157A-Team34.git`

## To Run:
* In Command Prompt:
    1. Go to file location in your machine: `cd CS157A-Team34`
    2. `cd app/backend`
    3. Install all dependencies with `npm install` for backend 
    4. `cd client`
    5. Install all dependencies with `npm install` for front-end
    6. If you already have npm installed, you can also run npm update to fix any vulnerabilities

* Changing your own MySQL Password
    * After `cd app/backend`, find the `app.js` (Note: Not `App.js`)
    ```JS
    const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "******",  /* Change this to your MySQL Password */
    database: "StockWeb" /* Or Change this to your database name */
    });
    ```

* RUN the backend by `npm start` in `app/backend`
* Then RUN the React by `npm start` in `app/backend/client`

* Checkout `localhost:3000` for front-end port and checkout `localhost:3001` for backend port, make sure they both working.
* To see if the data is passing correctly AFTER Sign In/Up, go to any port below to see the data in JSON format.
   ```JS
   localhost:4000/profile
   localhost:4000/fav
   localhost:4000/history
   localhost:4000/earning
   localhost:4000/searchResult
   ```
   You will see something like this.
   ``` JSON
   {"data":[{ "User_name":"Bruce Wayne",
              "User_email":"batman@vinaora.com"}]}
   ```

    
## Team Member

*All work up to today*

[**Liam(Yang) Li**](https://github.com/liamLacuna)

[**Sachin Shah**](https://github.com/sachinio20)

Team Leader: [**Sharon(En-Ping) Shih**](https://github.com/SharonShih)



