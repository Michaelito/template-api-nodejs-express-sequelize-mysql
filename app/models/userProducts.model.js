module.exports = (sequelize, Sequelize) => {
    return sequelize.define("usersProducts", {
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
        users_id: {
            type: Sequelize.STRING,
            allowNull: true,
        },
        products_id: {
            type: Sequelize.STRING
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