return function()
  local loader = require(script.Parent)
  
  it("should load modules", function()
    expect(loader).to.be.ok()
  end)
end
