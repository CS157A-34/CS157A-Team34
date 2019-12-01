var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

// var indexRouter = require('./routes/html-routes');
// var usersRouter = require('./routes/message-api-routes');

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
  password: "haoly66ly..",  /* change to your own MySQL Password */
  database: "stockWeb"   /* change to your database name */
  // multipleStatement: true
});

connection.connect(function (err) {
  (err) ? console.log(err) : console.log(connection);
});

if (process.env.NODE_ENV === "production") {
  app.use(express.static("client/build"));
}

require('./routes/html-routers')(app, connection);



let localUser = '';
let localID = '';

//sign up auth
app.get('/signup', (req, res) => {
  // console.log(req);
  const name = req.query.username;
  const email = req.query.email;
  const password = req.query.password;
  // const {username, email, password} = req.query;

  // const id = Math.random();
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

//sign in auth
app.get('/signin', (req, res) => {
  // console.log(req);
  let email = req.query.email;
  let password = req.query.password;
  console.log(email);
  console.log(password)

  const SELECT_USER = `SELECT * FROM User WHERE User_email= '${email}'`;
  console.log(SELECT_USER);
  connection.query(SELECT_USER, (err, results) => {
    if (err) {
      return res.send(err)
    }
    else {
      // console.log(results);
      localUser = email;
      console.log(results);
      localID = results[0].User_id;
      console.log(localID + "-> LocalID for user");

      return res.json({
        data: results
      })

      // return res.send('user sucessfully login')

    }
  });
})

//profile
//TODO: Change WHERE condition -> User_name or User_email
app.get('/profile', (req, res) => {
  console.log(localUser);
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

//Favorite List
//TODO: Change WHERE condition -> User_id or name
app.get('/fav', (req, res) => {
  const SELECT_FAV_LIST = `SELECT * FROM Save, User, Stock, Daily WHERE User_email ='${localUser}' AND User.User_id = Save.User_id AND Save.Stock_id = Stock.Stock_id AND Stock.Stock_id= Daily.Stock_id`;
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


let localKey = '';

//Search Result for individual stock
//TODO: Change WHERE condition -> User_id or name
//TODO: Add Search history to `Search` table


app.get('/search', (req, res) => {
  let search_key = req.query.key;
  console.log(search_key + " -> input localKey");
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

//TODO: TYPOOOOOOOO
app.get('/serachResult', (req, res) => {
  console.log(localKey + " -> Search result localKey");
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

//Search History
//TODO: Change WHERE condition -> User_id or name
app.get('/history', (req, res) => {
  const SELECT_SEARCH_HISTORY = `SELECT * FROM Search JOIN User USING (User_id) JOIN Stock USING (Stock_id) JOIN Daily USING (Stock_id) WHERE User_email ='${localUser}' ORDER BY Search_date ASC`;
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

//Earning list
//TODO: Same as Fav list -> Change User_name
app.get('/earning', (req, res) => {
  const SELECT_EARNING_LIST = `SELECT * FROM Earnings JOIN Daily USING(Stock_id) JOIN Stock USING(Stock_id) JOIN User USING(User_id) WHERE User_email ='${localUser}'`;
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

app.get('/delete', (req, res) => {
  const stockID = req.query.stockID;
  const DELETE_FROM_FAVORITE = `DELETE FROM Save WHERE Stock_id = '${stockID}' AND User_id = '${localID}'`;
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

//TO check gets data properly in json format: "http://localhost:4000/<profile or fav list or earing...>"
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