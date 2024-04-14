local scientific = require("lmt.scientific")
require("moon.all")

local class = require("30log")

Note = class("Note")

function Note:init(coord, dur)
	self.duration = dur -- ?
	--  if (!(this instanceof Note)) return new Note(coord, duration);
	-- duration = duration || {};
	--
	-- this.duration = { value: duration.value || 4, dots: duration.dots || 0 };
	self.coord = coord
end

function Note:fromString(name, dur)
	local coord = scientific.scientific(name)
	return Note(coord, dur)
end

p(Note:fromString("c#7", 4).coord)
