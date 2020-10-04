return function()
	local Clicky = require(script.Parent)
	local placeholder = "I don't know what to put here lol"

	describe("object", function()
		it("contains the ClickDetector", function()
			local ClickDetector = Clicky.new(workspace.Part, function(times)
				if times == 1 then
					print(placeholder)
				else
					print(placeholder .. " x" .. times)
				end
			end)

			expect(ClickDetector._obj).to.be.ok
		end)
	end)
	
	describe("callback", function()
		it("should be fired when the given object is clicked", function()
			local ClickDetector = Clicky.new(workspace.Part, function(times)
				if times == 1 then
					print(placeholder)
				else
					print(placeholder .. " x" .. times)
				end
			end)

			expect(ClickDetector).to.be.ok
		end)
	end)
end
