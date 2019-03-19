const express = require('express')
const bodyParser = require('body-parser')
const multer = require('multer')
const app = express();

app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded
// app.use(multer()); // for parsing multipart/form-data

app.use(express.static('static/'));

app.get('/lucky', function(req, res) {
    return res.send('U are the lucky guy!, is not it ?')
})
const config = {
    port: 3120,
    host: ''
}
const server = app.listen(config.port, function() {
    var host = server.address().address;
    var port = server.address().port;
  
    console.log('Example app listening at http://%s:%s', host, port);
})