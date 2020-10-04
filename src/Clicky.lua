local require = require(game:GetService("ReplicatedStorage"):WaitForChild("Nevermore"))

local BaseObject = require("BaseObject")

local Clicky = {}
Clicky.ClassName = Clicky
Clicky.__index = Clicky

function Clicky.new(object, func)
	local self = setmetatable(BaseObject.new(Instance.new("ClickDetector", object)), Clicky)

	self.timesClicked = 0

	self._obj.MouseClick:Connect(function()
		self.timesClicked = self.timesClicked + 1
		func(self.timesClicked)
	end)
	self._maid:GiveTask(function()
		self._obj:Destroy()
		setmetatable(self, nil)
	end)

	return self
end

function Clicky:Destroy()
	self._maid:DoCleaning()
end

return Clicky
