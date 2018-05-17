module.exports = function (sequelize, DataTypes) {
  var Post = sequelize.define("Post", {
    location: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1]
      }
    },
    body: {
      type: DataTypes.TEXT,
      allowNull: false,
      len: [1]
    },
    when: {
      type: DataTypes.TEXT,
      allowNull: false,
      len: [1]
    },
    rank: {
      type: DataTypes.NUMBER,
      allowNull: false,
      len: [1]
    }
  });
  // relationship
  Post.associate = function (models) {
    // We're saying that a Post should belong to Neighborhood
    // A Post can't be created without a Neighborhood due to the foreign key constraint
    Post.belongsTo(models.Hood, {
      foreignKey: {
        allowNull: false
      }
    });
  };
  return Post;
};
