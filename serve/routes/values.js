'use strict';

const express = require('express');
const router = express.Router();
const ini = require('ini');
const fs = require('fs');

const init_monsters = {
	Encounters: {
		Name: 'Encounters',
		Image: '',
		Count: 0,
		View: true
	},
	Beavo: {
		Name: 'Beavo',
		Image: 'images/Beavo.png',
		Count: 0,
		View: true
	},
	Mudcrab: {
		Name: 'Mudcrab',
		Image: 'images/Mudcrab.png',
		Count: 0,
		View: true
	},
	Goatstick: {
		Name: 'Goatstick',
		Image: 'images/Goatstick.png',
		Count: 0,
		View: true
	},
	Sapli: { Name: 'Sapli', Image: 'images/Sapli.png', Count: 0, View: true },
	Stingloreon: {
		Name: 'Stingloreon',
		Image: 'images/Stingloreon.png',
		Count: 0,
		View: true
	},
	Ducko: { Name: 'Ducko', Image: 'images/Ducko.png', Count: 0, View: true },
	Burbro: {
		Name: 'Burbro',
		Image: 'images/Burbro.png',
		Count: 0,
		View: true
	},
	Wormi: {
		Name: 'Wormi',
		Image: 'images/Wormi.png',
		Count: 0,
		View: true
	},
	Dreamcrawl: {
		Name: 'Dreamcrawl',
		Image: 'images/Dreamcrawl.png',
		Count: 0,
		View: true
	},
	Dragonworm: {
		Name: 'Dragonworm',
		Image: 'images/Dragonworm.png',
		Count: 0,
		View: true
	},
	Unknown: {
		Name: 'Unknown',
		Image: '',
		Count: 0,
		View: false
	}
};

router.get('/', (req, res) => {
	res.send('testings...');
});

router.get('/generate', (req, res) => {
	if (fs.existsSync('public/monsters.ini')) {
		fs.unlinkSync('public/monsters.ini');
	}
	fs.writeFileSync('public/monsters.ini', ini.stringify(init_monsters));
	res.send('Reset values.');
});

module.exports = router;
