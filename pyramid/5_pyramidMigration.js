const simplePyramid = artifacts.require("simplePyramid");

module.exports = function (deployer){
  deployer.deploy(simplePyramid, { value: 1e15});
};
