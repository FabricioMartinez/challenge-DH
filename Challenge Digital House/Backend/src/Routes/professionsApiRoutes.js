const express = require('express')
const router = express.Router();
const professionController = require('../Controller/professionsApiController');

router.get('/professions',professionController.list)

module.exports = router;