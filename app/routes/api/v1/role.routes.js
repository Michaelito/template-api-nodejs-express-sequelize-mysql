module.exports = app => {

    const router = require("express").Router();

    //controllers
    const controller = require("../../../controllers/role.controller.js");


    router.get("/", controller.findAll);

    //version api
    app.use('/api/v1/role', router);

};