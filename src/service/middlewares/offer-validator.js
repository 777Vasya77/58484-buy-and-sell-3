'use strict';

const {HttpCode} = require(`../../constants`);

const offerKeys = [`categories`, `description`, `picture`, `title`, `typeId`, `sum`];

module.exports = (req, res, next) => {
  const newOffer = req.body;
  const keys = Object.keys(newOffer);
  const keysExists = offerKeys.every((key) => keys.includes(key));

  if (!keysExists) {
    return res
      .status(HttpCode.BAD_REQUEST)
      .send(`Bad request. Fields: [${offerKeys.join(`, `)}] is required!`);
  }

  return next();
};
