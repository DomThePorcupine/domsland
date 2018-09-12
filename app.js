var express = require('express')

var app = express()

app.use(express.static('pub'));

app.use(function(req, res) {
  res.sendFile(__dirname + '/pub/404.html')
})

app.listen(3045)
