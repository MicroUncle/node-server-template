const express = require('express')
const bodyParser = require('body-parser')
const multer = require('multer')
const app = express();

app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded
// app.use(multer()); // for parsing multipart/form-data

app.use(express.static('static/'));


const config = {
    port: 8000,
    host: ''
}
const server = app.listen(config.port, function() {
    var host = server.address().address;
    var port = server.address().port;
  
    console.log('Example app listening at http://%s:%s', host, port);
})