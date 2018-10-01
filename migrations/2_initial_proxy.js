const UserStorage = artifacts.require("./UserStorage")
const Proxy = artifacts.require("./Proxy")

module.exports = async function (deployer, network, accounts) {
  deployer.deploy(UserStorage).then(function () {
    return deployer.deploy(Proxy, UserStorage.address);
  });
};