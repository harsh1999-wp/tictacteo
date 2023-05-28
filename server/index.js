// importing module
const { log } = require('console');
const express = require('express');
const http = require('http');
const mongoose = require('mongoose');

const app = express();
const port = process.env.PORT || 3000;
var server =http.createServer(app);

var io = require('socket.io')(server);

//middle ware
app.use(express.json());

const DB ="mongodb+srv://harshkandoi:eOQGqeMc17abSuH9@cluster0.5b3fbej.mongodb.net/?retryWrites=true&w=majority";

io.on('connection ' ,(socket)=>{
    console.log('conntected!')
})

mongoose.connect(DB).then(()=>{
    console.log("Connection successfull!");
})
.catch((e)=> {
    console.log(e);
});

server.listen(port,'0.0.0.0',() =>{
    console.log(`Server started and running on port  ${port}`);

}
);
