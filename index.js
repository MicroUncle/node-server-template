const express = require('express')

const app = express();

app.use(express.static('static/'))

const config = {
    port: 3000,
    host: ''
}
const server = app.listen(config.port, function() {
    var host = server.address().address;
    var port = server.address().port;
  
    console.log('Example app listening at http://%s:%s', host, port);
})