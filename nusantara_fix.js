const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const app = express();
const port = 3000;
const db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'nusantara_db'
}).promise();
app.use(cors());
app.use(express.json());

app.listen(port, () => {
  console.log(`Express app listening at http://localhost:${port}`);
});

//  Get api media
app.get('/api/media', async (req, res) => {
    try {
        const [rows] = await db.query('SELECT * FROM media');
        res.status(200).json(rows);
    } catch (error) {
        res.status(500).json({
            message: 'Kesalahan Server'
        });
    }
});

// Get api by media
app.get('/api/media/:id_media', async (req, res) => {
    try {
        const [rows] = await db.query(
            'SELECT * FROM media WHERE id_media = ?',
            [req.params.id_media]
        );

        if (rows.length > 0) {
            res.status(200).json(rows[0]);
        } else {
            res.status(404).json({
                message: 'Media tidak ditemukan'
            });
        }
    } catch (error) {
        res.status(500).json({
            message: 'Kesalahan Server'
        });
    }
});

// Update PUT
app.put('/api/media/:id_media', async (req, res) => {
    const id_media = req.params.id_media
    const {title, tahun_rilis, genre} = req.body

    // Validasi input
    if (!title || !tahun_rilis || !genre) {
        return res.status(400).json({
            message: 'Data tidak lengkap. Pastikan title, tahun_rilis, dan genre diisi.'
        });
    }

    try {
        const sql = `
            UPDATE media
            SET title = ?, tahun_rilis = ?, genre = ? 
            WHERE id_media = ?
        `
        const [result] = await db.query(sql, [
            title,
            tahun_rilis,
            genre,
            id_media
        ])
        if (result.affectedRows === 0) {
            return res.status(404).json({
                message: 'Media tidak ditemukan'
            });
        }

    const updatedMedia = {
        id_media: parseInt(id_media),
        title,
        tahun_rilis,
        genre
    };
        res.status(200).json({
            massge: 'Data Media berhasil diperbarui!',
            updatedMedia
        });
    } catch (error) {
        console.error(error)
        req.status(500).json({
            massge: 'Kesalahan Server'
        })
    }
});