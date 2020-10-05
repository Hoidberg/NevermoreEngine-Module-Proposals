return function()
  local Clicky = require(script.Parent)

  it("should fire the given function when the object is clicked", function()
    expect(Clicky).to.be.ok()
  end)
end
