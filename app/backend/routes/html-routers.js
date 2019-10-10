const path = require("path");
const mysql = require("mysql");

module.exports = function(app, connection){	
    app.get('/User', function(req, res){	
        // res.send('Hello from Team-34');	
        connection.query('SELECT * FROM User', function(err, data){
            (err)? res.send(err).toString(): res.json({User:data});
        });
    });	
}