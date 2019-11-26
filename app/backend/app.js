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
app.use(function(req, res, next) {
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

connection.connect(function(err){
  (err)? console.log(err): console.log(connection);
}); 

if (process.env.NODE_ENV === "production") {
  app.use(express.static("client/build"));
}

require('./routes/html-routers')(app, connection);

//sign up auth
app.get('/signup', (req, res) => {
  const {name, email, password} = req.query;
  // const id = Math.random();
  const INSERT_USER = `INSERT INTO User VALUES('${name}', '${email}','${password}')`;
  connection.query(INSERT_USER, (err, results)=>{
    if(err){
      return res.send(err)
    }
    else{
      return res.send('user sucessfully added')
    }
});
})

//profile
app.get('/profile', (req, res) => {
  //TODO: Change WHERE condition of User_name
  const SELECT_PROFILE = 'SELECT User_name, User_email FROM User WHERE User_name = "Bruce Wayne"';
  connection.query(SELECT_PROFILE, (err, results)=>{
    if(err){
      return res.send(err)
    }
    else{
      return res.json({
        data: results
      })
    }
});
})

//Favorite List
app.get('/fav', (req, res) => {
  const SELECT_FAV_LIST = 'SELECT Stock_id, Stock_ticker, Daily_high, Daily_low, Closing_price, Average_price, Trading_volume FROM stockWeb.Info, stockWeb.Stock WHERE Info.Info_id = Stock.Stock_id';
  connection.query(SELECT_FAV_LIST, (err, results)=>{
    if(err){
      return res.send(err)
    }
    else{
      return res.json({
        data: results
      })
    }
  });
})

//Earning list
app.get('/earning', (req, res) => {
  const SELECT_EARNING_LIST = 'SELECT Earning_id, Stock_ticker, Costs, Price, Share FROM stockWeb.Earnings'
  connection.query(SELECT_EARNING_LIST, (err, results) => {
      if(err){
        return res.send(err)
      }
      else {
        return res.json({
          data: results
        })
      }
  });
})


//TO check gets data properly in json format: "http://localhost:4000/profile"
app.listen(4000, () => {
  console.log('Profile server listening on')
} )

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});


// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});



module.exports = app;
