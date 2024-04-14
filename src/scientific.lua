local M = {}
require("moon.all")

-- note coordinates
local notes = {
	c = { 0, 0 },
	d = { -1, 2 },
	e = { -2, 4 },
	f = { 1, -1 },
	g = { 0, 1 },
	a = { -1, 3 },
	b = { -2, 5 },
	h = { -2, 5 },
}

local function coordify(name)
	if notes[name] then
		return notes[name]
	else
		return nil
	end
end

local A4 = { 3, 3 } -- Relative to C0 (scientic notation, ~16.35Hz)
local sharp = { -4, 7 }

-- accidental values
local accidentalValues = {
	["bb"] = -2,
	["b"] = -1,
	["#"] = 1,
	["x"] = 2,
	[""] = 0,
}

local function accidentalNumber(acc)
	return accidentalValues[acc] or 0
end

local function interval(acc)
	local val = accidentalValues[acc] or 0
	return { -4 * val, 7 * val }
end

function M.scientific(name)
	local format = "^([a-h])([x#b]?b?)(%-?%d*)"
	local noteName, accidental, octave = string.match(name:lower(), format)
	-- print(accidental)
	if not noteName then
		return
	end

	local accval = interval(accidental)
	local coord = coordify(noteName:lower())

	coord[1] = coord[1] + octave
	coord[1] = coord[1] + accval[1] - A4[1]
	coord[2] = coord[2] + accval[2] - A4[2]

	return coord
end

p(M.scientific("c#3"))
return M
