const express = require('express');
const app = express();
const port = 3000;
const bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());


app.get('/', (req, res) => {
    const html = `
    <!DOCTYPE html>
    <html lang="id">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>API Hero Mobile Legend</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                text-align: center;
                padding: 50px;
                color: black; /* Mengubah warna teks agar kontras dengan latar belakang */
            }
            h1 {
                color: black; /* Warna teks untuk judul */
            }
            button {
                padding: 10px 20px;
                font-size: 16px;
                color: white;
                background-color: #007bff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }
            button:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <h1>Selamat Datang di API Hero Mobile Legend</h1>
        <p>Klik tombol di bawah ini untuk mengakses daftar hero:</p>
        <button onclick="window.location.href='/api/hero'">Lihat Daftar Hero</button>
    </body>
    </html>
    `;
    res.send(html);
});


const heroRouter = require('./routes/hero');
app.use('/api/hero', heroRouter);


app.listen(port, () => {
    console.log(`Aplikasi ini berjalan di http://localhost:${port}`);
});