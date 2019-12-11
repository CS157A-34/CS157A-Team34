var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');


var app = express();
const server = require('http').createServer(app);
const mysql = require('mysql');

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

//CORS
app.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});



const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "mypassword",  /* change to your own MySQL Password */
  database: "stockWeb"   /* change to your database name */
});

connection.connect(function (err) {
  (err) ? console.log(err) : console.log(connection);
});

if (process.env.NODE_ENV === "production") {
  app.use(express.static("client/build"));
}

require('./routes/html-routers')(app, connection);


//localId and localUser change bases on the user ID of the currently logged in User 
let localUser = '';
let localID = '';

//Sign Up Auth & Add User Info to User Table
app.get('/signup', (req, res) => {
  const name = req.query.username;
  const email = req.query.email;
  const password = req.query.password;

  const INSERT_USER = `INSERT INTO User VALUES(UUID_SHORT(),'${name}', '${email}','${password}')`;
  connection.query(INSERT_USER, (err, results) => {
    if (err) {
      return res.send(err)
    }
    else {
      return res.send('user sucessfully added')
    }
  });
})

//User Sign In Auth
app.get('/signin', (req, res) => {
  let email = req.query.email;
  //let password = req.query.password;

  const SELECT_USER = `SELECT * FROM User WHERE User_email= '${email}'`;
  connection.query(SELECT_USER, (err, results) => {
    if (err) {
      return res.send(err)
    }
    else {
      localUser = email;
      localID = results[0].User_id;
      return res.json({
        data: results
      })
    }
  });
})

//Get User's Profile Info
app.get('/profile', (req, res) => {
  const SELECT_PROFILE = `SELECT User_name, User_email FROM User WHERE User_email = '${localUser}'`;
  connection.query(SELECT_PROFILE, (err, results) => {
    if (err) {
      return res.send(err)
    }
    else {

      return res.json({
        data: results
      })
    }
  });
})

//Get User's Favorite List
app.get('/fav', (req, res) => {
  const SELECT_FAV_LIST = `SELECT * FROM Save, User, Stock, Daily WHERE User_email ='${localUser}' AND User.User_id = Save.User_id AND Save.Stock_id = Stock.Stock_id AND Stock.Stock_id= Daily.Stock_id ORDER BY Stock_ticker ASC`;
  connection.query(SELECT_FAV_LIST, (err, results) => {
    if (err) {
      return res.send(err)
    }
    else {
      return res.json({
        data: results
      })
    }
  });
})

//Local Search Key(Stock Ticker)
let localKey = '';

//Search for Stock Info
app.get('/search', (req, res) => {
  let search_key = req.query.key;
  const SELECT_SEARCH_RESULT = `SELECT * From Stock JOIN Daily USING (Stock_id) JOIN Week USING (Stock_id) JOIN Month USING (Stock_id) JOIN Quarter USING (Stock_id) JOIN Half_year USING (Stock_id) JOIN Year USING (Stock_id) WHERE Stock_ticker = '${search_key}'`;
  connection.query(SELECT_SEARCH_RESULT, (err, results) => {
    if (err) {
      return res.send(err)
    }
    else {
      localKey = search_key;
      return res.json({
        data: results
      })
    }
  });
})

//Get Search Result of the Stock
app.get('/searchResult', (req, res) => {
  const SELECT_SEARCH = `SELECT * From Stock JOIN Daily USING (Stock_id) JOIN Week USING (Stock_id) JOIN Month USING (Stock_id) JOIN Quarter USING (Stock_id) JOIN Half_year USING (Stock_id) JOIN Year USING (Stock_id) WHERE Stock_ticker = '${localKey}'`;
  connection.query(SELECT_SEARCH, (err, results) => {
    if (err) {
      return res.send(err)
    }
    else {
      return res.json({
        data: results
      })
    }
  });
})

//Add Search to User's Search History
app.get('/addToHistory', (req, res) => {
  var d = Date();
  let searchTime = d.toString();
  let hisotry_key = req.query.key;
  const INSERT_SEARCH_HISTORY =`INSERT INTO Search VALUES(UUID_SHORT(),'${localID}',(SELECT Stock_id FROM Stock WHERE Stock_ticker='${hisotry_key}'),'${searchTime}')`;
  connection.query(INSERT_SEARCH_HISTORY, (err, results) => {
    if (err) {
      return res.send(err)
    }
    else {
      return res.json({
        data: results
      })
    }
  });
})

/*
//Delete a stock from search history
app.get('/deleteFromHistory', (req, res) => {
  let delete_key = req.query.key;
  const DELETE_SEARCH_HISTORY = `DELETE FROM Search WHERE Stock_ticker ='${delete_key}'`;
  connection.query(DELETE_SEARCH_HISTORY, (err, results) => {
    if (err) {
      return res.send(err)
    }
    else {
      return res.json({
        data: results
      })
    }
  });
})*/

//Get User's Search History
app.get('/history', (req, res) => {
  const SELECT_SEARCH_HISTORY = `SELECT * FROM Search JOIN User USING (User_id) JOIN Stock USING (Stock_id) JOIN Daily USING (Stock_id) WHERE User_email ='${localUser}' ORDER BY Stock_ticker ASC`;
  connection.query(SELECT_SEARCH_HISTORY, (err, results) => {
    if (err) {
      return res.send(err)
    }
    else {
      return res.json({
        data: results
      })
    }
  });
})

//Get User's Earning List
app.get('/earning', (req, res) => {
  const SELECT_EARNING_LIST = `SELECT * FROM Earnings JOIN Daily USING(Stock_id) JOIN Stock USING(Stock_id) JOIN User USING(User_id) WHERE User_email ='${localUser}' ORDER BY Stock_ticker ASC`;
  connection.query(SELECT_EARNING_LIST, (err, results) => {
    if (err) {
      return res.send(err)
    }
    else {
      return res.json({
        data: results
      })
    }
  });
})

//Add New Earning to Earning Table
app.get('/manage', (req, res) => {
  const stockName = req.query.name;
  const cost = req.query.cost;
  const share = req.query.share;

  const INSERT_EARNING = `INSERT INTO Earnings VALUES(UUID_SHORT(),'${localID}', (SELECT Stock_id FROM Stock WHERE Stock_ticker ='${stockName}'),'${cost}','${share}')`;
  connection.query(INSERT_EARNING,(err, results) => {
    if (err) {
      return res.send(err)
    }
    else { 
      return res.json({
        data: results
      })
    }
  });
})

/*
app.get('/gethighestearner', (req, res) => {
  const stockName = req.query.name;
  const cost = req.query.cost;
  const share = req.query.share;

  const HIGHEST_EARNER = 'SELECT Stock_ticker FROM Earning ORDER BY (Earning.Cost * Earning.Share)';
  connection.query(HIGHEST_EARNER,(err, results) => {
    if (err) {
      return res.send(err)
    }
    else { 
      return res.json({
        data: results
      })
    }
  });
})*/

//Update the Information of Existed Earning in Earning Table
app.get('/edit', (req, res) => {
  const stockName = req.query.name;
  const cost = req.query.cost;
  const share = req.query.share;

  const UPDATE_EARNING = `UPDATE Earnings JOIN User USING(User_id) JOIN Stock USING(Stock_id) SET Cost='${cost}', Share='${share}' WHERE Stock_ticker='${stockName}' AND User_email ='${localUser}'`;
  connection.query(UPDATE_EARNING, (err, results) => {
    if (err) {
      return res.send(err)
    }
    else {
      return res.json({
        data: results
      })
    }
  });
})

//Save stock to favorite list
app.get('/save', (req, res) => {
  const stockID = req.query.stockID;
  const SAVE_TO_FAVORITE = `INSERT INTO Save VALUES(UUID_SHORT(), '${localID}', '${stockID}')`;
  connection.query(SAVE_TO_FAVORITE,(err, results) => {
    if (err) {
      return res.send(err)
    }
    else { 
      return res.json({
        data: results
      })
    }
  });
})

//Delete saved stock from favorite list
app.get('/delete', (req, res) => {
  const stockName = req.query.stockName;
  const DELETE_FROM_FAVORITE = `DELETE FROM Save WHERE User_id = '${localID}' AND Stock_id = any(SELECT Stock_id FROM Stock WHERE Stock_ticker ='${stockName}')`;
  connection.query(DELETE_FROM_FAVORITE,(err, results) => {
    if (err) {
      return res.send(err)
    }
    else { 
      return res.json({
        data: results
      })
    }
  });
})


//TO check gets data properly in json format: "http://localhost:4000/<profile or fav list or earning...>"
app.listen(4000, () => {
  console.log('Profile server listening on')
})

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});


// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});



module.exports = app;