const express = require('express')
var mysql = require('mysql');
const app = express()
const port = 3000

var connection = mysql.createConnection({
  host     : process.env.RDS_HOSTNAME,
  user     : process.env.RDS_USERNAME,
  password : process.env.RDS_PASSWORD,
  port     : process.env.RDS_PORT
});
app.get("/", (req, res) => {

connection.connect(function(err) {
  if (err) {
          res.send("db connection failed")
    console.error('Database connection failed: ' + err.stack);
    return;
 }
        res.send("db connection successful");
  console.log('Connected to database.');

connection.end();
});})

 
  app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
  })