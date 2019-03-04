'use strict';

const express = require('express');
const request = require('request');

// Constants
const PORT = 8081;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/search', (req, res) => {
  res.send('Hello world this is search service\n');
});
app.get('/search/es', (req, res) => {
  var response = res;
  request('http://elasticsearch:9200', (err, res, body) => {
    response.send(res);
  });
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);