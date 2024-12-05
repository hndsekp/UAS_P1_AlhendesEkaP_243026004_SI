let mysql = require('mysql')

let koneksi = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'api_hero_ml'
})

koneksi.connect(function(error){
    if(!!error){
        console.log(error)
    }else{
        console.log('Connection Success')
    }
})

module.exports = koneksi