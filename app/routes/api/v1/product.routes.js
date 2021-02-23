module.exports = app => {

    const router = require("express").Router();

    //controllers
    const controller = require("../../../controllers/product.controller.js");

    // get all 
    router.get("/", controller.findAll);

    //version api
    app.use('/api/v1/products', router);

};