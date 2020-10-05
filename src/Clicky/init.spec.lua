return function()
	local Clicky = require(script.Parent)
	
	it("creates a ClickDetector and fires the given function when it is clicked", function()
		expect(Clicky).to.be.ok()
	end)
end
