/* Express is a module of node to make routes to database */
const express = require('express');

/* Connect to mysql module */
const mysql = require('mysql');

/* Set the port to 3000 */
const PORT = process.env.PORT || 3000;

const app = express();

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "haoly66ly..",  /* remember to change this password to ur own mysql password */
    database: "test-data-cs157a"
});

connection.connect(function(err){
    (err)? console.log(err): console.log(connection);
}); 

require('./routers/html-routers')(app, connection);
/* Start the server */
app.listen(PORT, () => {
    console.log(`App running on port ${PORT}`);
});