const express = require('express');
const app = express();


app.get('/',() => {
    console.log('Server Started on localhost 3000');
})