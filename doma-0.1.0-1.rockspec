package = "doma"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/APConduct/doma.git",
   tag = "v0.1.0"
}

description = {
   summary = "A declarative UI library for LÖVE",
   detailed = [[
      DOMA is a declarative UI library for the LÖVE framework,
      providing an easy-to-use API for creating game interfaces.
   ]],
   homepage = "https://github.com/yourusername/doma",
   license = "MIT" -- or your chosen license
}

dependencies = {
   "lua >= 5.1",
}

supported_platforms = { "unix", "linux", "macosx", "windows" }

external_dependencies = {
   LOVE = {
        program = "love"
    }
}

build = {
   type = "builtin",
   modules = {
      ["doma"] = "src/init.lua",
      ["doma.app"] = "src/app.lua",
      ["doma.backend"] = "src/backend.lua",
      ["doma.event"] = "src/event.lua",
      ["doma.layout"] = "src/layout.lua",
      ["doma.scene"] = "src/scene.lua",
      ["doma.theme"] = "src/theme.lua",
      ["doma.utils"] = "src/utils.lua",
      ["doma.animation"] = "src/animation.lua"
   },
   dir = ".."
}
