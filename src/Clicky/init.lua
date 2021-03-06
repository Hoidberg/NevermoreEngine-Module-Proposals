local require = require(game:GetService("ReplicatedStorage"):WaitForChild("Nevermore"))

local BaseObject = require("BaseObject")
local t = require(script.t)

local Clicky = {}
Clicky.ClassName = Clicky
Clicky.__index = Clicky

local argCheck = t.tuple(t.instanceIsA("BasePart"), t.callback)

function Clicky.new(object, callback)
	assert(argCheck(object, callback))

	local self = setmetatable(BaseObject.new(Instance.new("ClickDetector", object)), Clicky)

	self.timesClicked = 0

	self._maid:GiveTask(self._obj.MouseClick:Connect(function()
		self.timesClicked = self.timesClicked + 1
		callback(self.timesClicked)
	end))
	self._maid:GiveTask(function()
		self._obj:Destroy()
	end)

	return self
end

return Clicky
