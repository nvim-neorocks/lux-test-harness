rockspec_format = "3.0"
package = "luarocks"
version = "3.0.4-1"
source = {
   url = "git+https://github.com/luarocks/luarocks",
   tag = "v3.0.4",
}
description = {
   summary = "A package manager for Lua modules.",
   detailed = [[
      LuaRocks allows you to install Lua modules as self-contained
      packages called "rocks", which also contain version dependency
      information. This information is used both during installation,
      so that when one rock is requested all rocks it depends on are
      installed as well, and at run time, so that when a module is
      required, the correct version is loaded. LuaRocks supports both
      local and remote repositories, and multiple local rocks trees. 
   ]],
   homepage = "http://www.luarocks.org",
   issues_url = "https://github.com/luarocks/luarocks/issues",
   maintainer = "Hisham Muhammad",
   license = "MIT",
}
test_dependencies = {
   "luacov",
}
test = {
   type = "busted",
   platforms = {
      windows = {
         flags = { "--exclude-tags=ssh,git,unix" }
      },
      unix = {
         flags = { "--exclude-tags=ssh,git" }
      }
   }
}
