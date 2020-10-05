-- a simple module loader
return function(name)
	if script:FindFirstChild(name) then
		return require(script:FindFirstChild(name))
	else
		error(string.format("%s is not a valid module", name))
	end
end
