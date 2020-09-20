const express = require('express');
const app = express();
const fs = require('fs');
const filename = './db.json';
app.set("view engine", "ejs");

// app.use(express.static(__dirname+ "/views"));
app.use(express.static(__dirname+ "/public"));
app.use(express.urlencoded({extended:true}))
app.use(express.json())

    
    

app.get('/',(req,res) => {
    res.render("index", {page: "index"})
})
app.get("/profile", (req,res) => {
  res.render("profile", {page: "profile"});
});
app.get("/cart", (req,res) => {
  res.render("cart", {page: "cart"});
});
app.get("/contact", (req,res) => {
  res.render("contact", {page: "contact"});
});


let port = process.env.PORT;
if (port == null || port == "") { port = 5000; }

app.listen(port, function() {
  console.log("Server has started successfully!");
});
