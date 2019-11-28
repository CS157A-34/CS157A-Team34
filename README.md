# CS157ATeam34
Team repository for Team 34 group project 

## Getting started 

### Prerequisites
You need [**Node.js**](https://nodejs.org/en/) prior to installing.
* Install Node.js
    * On Windows, Linux and MacOS, install the latest [Node version](https://nodejs.org/en/download/) from the Node.js website. 

### Installing

With all the prerequisites installed, clone this repository with

`git clone https://github.com/CS157A-34/CS157A-Team34.git`

## Set Up Database Schema, Table and Data
* The schema should called `StockWeb`. If the schema name is changed, make sure to change it under `app.js`.
* Go to `/app/backend/client/src/database_setup/` and run the `StockWeb.sql` in MySQL Workbrench or Terminal
* `init.sql` will be creating the tables only (no data insert). 

## To Run:
* In Command Prompt:
    1. Go to file location in your machine: `cd CS157A-Team34`
    2. `cd app/backend`
    3. Install all dependencies with `npm install` for backend 
    4. `cd client`
    5. Install all dependencies with `npm install` for front-end

* Changing your own MySQL Password
    * After `cd app/backend`, find the app.js
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



