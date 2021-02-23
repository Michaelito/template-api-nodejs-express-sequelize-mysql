module.exports = (sequelize, Sequelize) => {
    return sequelize.define("product", {
        created_at: {
            type: Sequelize.DATE
        },
        created_id: {
            type: Sequelize.INTEGER
        },
        title: {
            type: Sequelize.STRING(50),
            allowNull: true,
        },
        description: {
            type: Sequelize.STRING,
            allowNull: true,
        },
        amount: {
            type: Sequelize.DECIMAL
        },
        term: {
            type: Sequelize.TEXT
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
        tableName: 'products',
        freezeTableName: true,
        timestamps: false,
    });

};