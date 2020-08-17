const simpleponzi = artifacts.require("SimplePonzi");

module.exports = function(deployer){
    deployer.deploy(simpleponzi);
}