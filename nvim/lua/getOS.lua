-- from https://gist.github.com/Zbizu/43df621b3cd0dc460a76f7fe5aa87f30
local getOS = {
	UNKNOWN   = 0,
	WINDOWS   = 1,
	GNU_LINUX = 2,
	-- TODO: others
}

function getOS.getName()
	local osname
	-- ask LuaJIT first
	if jit then
		return jit.os
	end

	-- Unix, Linux variants
	local fh, err = assert(io.popen("uname -o 2>/dev/null", "r"))
	if fh then
		osname = fh:read()
	end

	return osname or "Windows"
end

function getOS.get()
	local osname = getOS.getName()
	if osname == "Windows" then
		return getOS.WINDOWS
	elseif osname == "GNU/Linux" then
		return getOS.GNU_LINUX
	else
		return getOS.UNKNOWN
	end
end

return getOS
