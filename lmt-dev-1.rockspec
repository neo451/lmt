package = "lmt"
version = "dev-1"
source = {
	url = "git+ssh://git@github.com/noearc/lmt.git",
}
-- description = {
-- 	summary = "a port of the tidalcycles pattern language to lua/moonscript",
-- 	detailed = [[
-- modal is an experimental port of the livecoding music language [Tidalcycles](http://tidalcycles.org/) to the lua programming language.
-- This project follows the footsteps of [vortex](https://github.com/tidalcycles/vortex) and [strudel](https://strudel.tidalcycles.org) and tranquility.]],
-- 	homepage = "https://github.com/noearc/modal",
-- 	license = "GPL3",
-- }
--
dependencies = {
	"lua >= 5.1",
}

build = {
	type = "builtin",
	modules = {
		["lmt.scientific"] = "src/scientific.lua",
		["lmt.note"] = "src/note.lua",
		["lmt.utils"] = "src/utils.lua",
		-- ["lmt.fraction"] = "src/core/fraction.lua",
		-- ["lmt.bitop"] = "src/core/bitop.lua",
		-- ["lmt.drawline"] = "src/core/drawline.lua",
		-- ["lmt.inspect"] = "src/core/inspect.lua",
		-- ["lmt.fun"] = "src/core/fun.lua",
		-- ["lmt.stream"] = "src/core/stream.lua",
		--
		-- ["lmt.types"] = "src/core/types.lua",
		-- ["lmt.pattern"] = "src/core/pattern.lua",
		-- ["lmt.pattern_factory"] = "src/core/pattern_factory.lua",
		--
		-- ["lmt.params"] = "src/params/params.lua",
		-- ["lmt.ui"] = "src/params/ui.lua",
		--
		-- ["lmt.clock"] = "src/clock/clock.lua",
		--
		-- ["lmt.euclid"] = "src/core/euclid.lua",
		-- ["lmt.scales"] = "src/core/scales.lua",
		-- ["lmt.chords"] = "src/core/chords.lua",
		--
		-- ["lmt.mini"] = "src/core/mini.lua",
		--
		-- -- ["lmt.luaish"] = "src/repl/luaish.lua",
		-- ["lmt.repl"] = "src/repl/repl.lua",
	},
	install = {
		-- bin = {
		-- 	-- "bin/lmt",
		-- },
	},
}
