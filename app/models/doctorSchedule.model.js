module.exports = (sequelize, Sequelize) => {
    return sequelize.define("doctorSchedule", {
        created_at: {
            type: Sequelize.DATE
        },
        created_id: {
            type: Sequelize.INTEGER
        },
        user_id: {
            type: Sequelize.STRING,
            allowNull: true,
        },
        day: {
            type: Sequelize.STRING,
            allowNull: true,
        },
        time: {
            type: Sequelize.STRING
        },
        updated_id: {
            type: Sequelize.INTEGER
        },
        status: {
            type: Sequelize.INTEGER
        },
    }, {
        tableName: 'doctor_schedule',
        freezeTableName: true,
        timestamps: false,
    });

};