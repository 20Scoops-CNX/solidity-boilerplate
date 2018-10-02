const ExampleContract = artifacts.require('ExampleContract')
const AppContract = artifacts.require('App')

contract('ExampleContract', accounts => {
  var app, example

  beforeEach(async () => {
    app = await AppContract.deployed()
    example = await ExampleContract.deployed()
  })

  it('register user', async () => {
    await app.upgradeTo(example.address)
    app = ExampleContract.at(app.address)
    const tx = await app.register("20scoops")
    assert.ok(tx)
  })
})