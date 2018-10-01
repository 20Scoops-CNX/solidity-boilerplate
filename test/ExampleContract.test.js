const ExampleContract = artifacts.require('ExampleContract');
const ProxyContract = artifacts.require('Proxy')

contract('ExampleContract', accounts => {
  var proxy, example

  beforeEach(async () => {
    proxy = await ProxyContract.deployed()
    example = await ExampleContract.deployed()
  });

  it('register user', async () => {
    await proxy.upgradeTo(example.address)
    proxy = ExampleContract.at(proxy.address)
    const tx = await proxy.register("20scoops")
    assert.ok(tx)
  });
});