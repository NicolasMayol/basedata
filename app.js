const express = require('express');
const app = express();
const mysql = require('mysql');
const myCon = require('express-myconnection');
const routes = require('./routes');

app.set('port', process.env.PORT || 3000);

const optionDb = {
    host: 'localhost',
    port: 3306,
    user: 'pepe',
    password: 'abc123',
    database: 'inmuebles'
};

app.use(myCon(mysql, optionDb, 'single'));


app.get('/', (req, res)=>{
    res.send('hola mundo')
});

app.use('/inm', routes );

app.use(express.json());

app.listen(app.get('port'), ()=>{
    console.log('hola mundo')
});
