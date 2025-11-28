local getOS = require("getOS")

local utils = {}

function utils.isFileInPath(filename)
	local PATH = os.getenv("PATH")
	local PATH_LEN = string.len(PATH)
	local PATH_sep = ":"
	local dir_sep = "/"
	if getOS.get() == getOS.WINDOWS then
		PATH_sep = ";"
		dir_sep = "\\"
	end
	local cursor = 1
	while cursor <= PATH_LEN do
		local start, end_
		local test = string.find(PATH, PATH_sep, cursor)
		if test == nil then
			start = cursor
			end_ = PATH_LEN
		else
			start, end_ = string.find(PATH, PATH_sep, cursor)
		end
		local path = string.sub(PATH, cursor, start-1)
		if path[string.len(path)] ~= dir_sep then
			path = path .. dir_sep
		end
		path = path .. filename
		local f = io.open(path, "rb")
		if f ~= nil then
			io.close(f)
			return true
		end
		cursor = end_ + 1
	end
	return false
end

return utils
