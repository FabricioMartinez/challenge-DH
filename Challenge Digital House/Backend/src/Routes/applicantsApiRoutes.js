const express= require ('express');
const applicantsApiController = require('../Controller/applicantsApiController');
const router= express.Router();

//Rutas
router.get('/applicants', applicantsApiController.list);
router.get('/applicants/search', applicantsApiController.search)



// Export
module.exports= router;