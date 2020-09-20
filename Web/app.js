const express = require('express');
const app = express();
const fs = require('fs');
const filename = 'db.json';
app.set("view engine", "ejs");
const bcrypt = require('bcryptjs');
const saltRounds = 5;

// app.use(express.static(__dirname+ "/views"));
app.use(express.static(__dirname+ "/public"));
app.use(express.urlencoded({extended:false}))
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


// app.post('/add',(req,res)=>{
//   // res.send('This is POST request')
//   let user = req.body
//   let data = fs.readFileSync(filename)
//   let db = JSON.parse(data)
//   let email = req.body.email
//   let flag=1,i=0
  
//   let password = req.body.password;

  
//   let length = db.users.length
//   console.log(length)
  

// })

let port = process.env.PORT;
if (port == null || port == "") { port = 5000; }

app.listen(port, function() {
  console.log("Server has started successfully at localhost:5000");
});
