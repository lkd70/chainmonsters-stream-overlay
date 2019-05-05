'use strict';

const express = require('express');
const path = require('path');

const monsterRouter = require('./routes/monsters');
const valuesRouter = require('./routes/values');

const app = new express();
const port = 3000;

app.use('/images', express.static('./public/images'));
app.use('/public', express.static('./public'));
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

app.use('/', monsterRouter);
app.use('/values/', valuesRouter);

app.listen(port, () => {
	console.log(`Server running on port ${port}`);
});
