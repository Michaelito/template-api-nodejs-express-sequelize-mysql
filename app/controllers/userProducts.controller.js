const db = require("../models");
const User = db.userProducts;
const Op = db.Sequelize.Op;


// Retrieve all from the database.
exports.findAll = (req, res) => {


    const name = req.query.name;
    var condition = name ? {
        name: {
            [Op.like]: `%${name}%`
        }
    } : null;

    User.findAll({ where: condition })
        .then(data => {
            //return json
            res.send({
                status: true,
                message: "The request has succeeded",
                data: {
                    users: data
                }
            }).status(200);
        })
        .catch(err => {
            //return json
            res.send({
                status: false,
                message: "The request has not succeeded",
                data: null
            }).status(500);
        });
};