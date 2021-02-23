module.exports = app => {

    const router = require("express").Router();

    //controllers
    const controller = require("../../../controllers/user.controller.js");


    router.get("/", controller.findAll);

    //version api
    app.use('/api/v1/users', router);

};