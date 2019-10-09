const mysql = require("mysql");

module.exports = function(app, connection){	
    app.get('/', function(req, res){	
        // res.send('Hello from Team-34');	
        connection.query('SELECT * FROM Stock', function(err, data){
            (err)? res.send(err).toString(): res.json({stock:data});
        });
    });	
}; 