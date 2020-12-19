local require = require(game:GetService("ReplicatedStorage"):WaitForChild("Nevermore"))

local BaseObject = require("BaseObject")
local t = require(script.t)

local Prompty = {}
Prompty.ClassName = Prompty
Prompty.__index = Prompty

local argCheck = t.tuple(t.instanceIsA("BasePart"), t.strictArray(t.EnumItem, t.EnumItem), t.callback)

function Prompty.new(object, keyCodes, callback)
	assert(argCheck(object, keyCodes, callback))

	local obj = Instance.new("ProximityPrompt", object) do
		obj.KeyboardKeyCode = keyCodes[1]
		obj.GamepadKeyCode = keyCodes[2]
	end

	local self = setmetatable(BaseObject.new(obj), Prompty)

	self.timesClicked = 0

	self._maid:GiveTask(self._obj.Triggered:Connect(function(...)
		callback(...)
	end))
	self._maid:GiveTask(function()
		self._obj:Destroy()
	end)

	return self
end

return Prompty
