const db = require("../models");
const healthProblems = db.healthProblems;
const Op = db.Sequelize.Op;


// Retrieve all from the database.
exports.findAll = (req, res) => {
    const title = req.query.title;
    var condition = title ? {
        title: {
            [Op.like]: `%${title}%`
        }
    } : null;

    healthProblems.findAll({ where: condition })
        .then(data => {
            res.send({
                status: true,
                message: "The request has succeeded",
                data: {
                    health_problems: data
                }
            }).status(200);
        })
        .catch(err => {
            res.send({
                status: false,
                message: "The request has not succeeded",
                data: null
            }).status(500);
        });
};