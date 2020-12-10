const express = require('express');
const app = express();

const PORT = process.env.PORT || 8000;

// Log every request
app.use(function (req, res, next) {
  console.log('Requesting file:', req.url);
  next();
});

// This app serves everything in /static
app.use(express.static('public'));

app.listen(PORT || 8000, function () {
  console.log(`Example app listening on port http://localhost:${PORT}`);
});