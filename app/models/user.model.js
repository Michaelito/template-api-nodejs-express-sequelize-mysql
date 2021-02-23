module.exports = (sequelize, Sequelize) => {
    return sequelize.define("user", {
        created_at: {
            type: Sequelize.DATE
        },
        created_id: {
            type: Sequelize.INTEGER
        },
        name: {
            type: Sequelize.STRING,
            allowNull: true,
        },
        email: {
            type: Sequelize.STRING,
            allowNull: true,
        },
        password: {
            type: Sequelize.STRING
        },
        img: {
            type: Sequelize.STRING
        },
        updated_at: {
            type: Sequelize.DATE
        },
        updated_id: {
            type: Sequelize.INTEGER
        },
        status: {
            type: Sequelize.INTEGER
        },
    }, {
        tableName: 'users',
        freezeTableName: true,
        timestamps: false,
    });

};