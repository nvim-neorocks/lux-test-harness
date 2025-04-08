rockspec_format = "3.0"
package = "luarocks-loader"
version = "0.1-1"
source = {
   url = "git+https://github.com/luarocks/luarocks-loader",
   tag = "v0.1",
}
description = {
   summary = "LuaRocks package loader",
   detailed = [[
      A LuaRocks-aware package loader.
      
      Requiring this module loads a package loader into the environment
      which is aware of the system's LuaRocks configuration, and can
      process the manifest file to scan for dependencies, identify
      multiple copies of installed modules and load the correct version
      for each dependency.
   ]],
   homepage = "https://github.com/luarocks/luarocks-loader",
   license = "MIT/X11"
}
build_dependencies = {
   "luarocks-build-cyan"
}
build = {
   type = "cyan"
}
