return function()
  local loader = require(script.Parent)
  
  it("should load modules", function()
    local module = loader("Clicky")
    
    expect(module).to.be.ok()
  end)
end
