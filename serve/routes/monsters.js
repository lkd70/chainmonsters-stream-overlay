'use strict';

const express = require('express');
const router = express.Router();
const ini = require('ini');
const fs = require('fs');


router.get('/', (req, res) => {
    if ('json' in req.query) {
        res.json(ini.parse(fs.readFileSync('public/monsters.ini', 'utf-8')));
    } else {
        const monsters = ini.parse(fs.readFileSync('public/monsters.ini', 'utf-8'));
        res.render('monsters', { 
            monsters
        });
    }
});

module.exports = router;