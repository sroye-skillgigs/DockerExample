'use strict';

const express = require('express');

// Constants
const PORT = 8082;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/actions', (req, res) => {
  res.send('Hello world this is actions service\n');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);