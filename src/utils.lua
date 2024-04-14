local flatten, zipWith, concat, splitAt, rotate
local fun = require("modal.fun")
local utils = {}

utils.flatten = function(t)
	local flat = {}
	for _index_0 = 1, #t do
		local value = t[_index_0]
		if type(value) == "table" then
			local _list_0 = utils.flatten(value)
			for _index_1 = 1, #_list_0 do
				local value = _list_0[_index_1]
				table.insert(flat, value)
			end
		else
			table.insert(flat, value)
		end
	end
	return flat
end

utils.zipWith = function(f, xs, ys)
	local _accum_0 = {}
	local _len_0 = 1
	for _, x, y in fun.zip(xs, ys) do
		_accum_0[_len_0] = f(x, y)
		_len_0 = _len_0 + 1
	end
	return _accum_0
end

utils.concat = function(a, b)
	return fun.totable(fun.chain(a, b))
end

utils.splitAt = function(index, value)
	return {
		(function()
			local _accum_0 = {}
			local _len_0 = 1
			local _max_0 = index
			for _index_0 = 1, _max_0 < 0 and #value + _max_0 or _max_0 do
				local v = value[_index_0]
				_accum_0[_len_0] = v
				_len_0 = _len_0 + 1
			end
			return _accum_0
		end)(),
		(function()
			local _accum_0 = {}
			local _len_0 = 1
			for _index_0 = index + 1, #value do
				local v = value[_index_0]
				_accum_0[_len_0] = v
				_len_0 = _len_0 + 1
			end
			return _accum_0
		end)(),
	}
end
utils.rotate = function(arr, step)
	local a, b
	do
		local _obj_0 = utils.splitAt(step, arr)
		a, b = _obj_0[1], _obj_0[2]
	end
	return utils.concat(b, a)
end

return utils
