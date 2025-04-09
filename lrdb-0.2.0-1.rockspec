package = "LRDB"
version = "0.2.0-1"
source = {
   url = "git://github.com/satoren/LRDB/",
   tag = "v0.2.0",
}
description = {
    summary = "Remote Debugger with VSCode Extension",
    detailed = [[
        Remote debugger for Lua with Visual Studio Code extension.
        https://marketplace.visualstudio.com/items?itemName=satoren.lrdb
        Require CMake,C++11 compiler
   ]],
   homepage = "https://github.com/satoren/LRDB",
   license = "Boost"
}
dependencies = {
    "lua >= 5.1, < 5.4"
}
build = {
   type = "cmake",
   cmake = 'cmake_minimum_required(VERSION 2.8)\n include(luarocks_cmake.txt)',
   variables ={LUA_LIBRARY_DIRS="$(LUA_LIBDIR)",LUA_INCLUDE_DIRS="$(LUA_INCDIR)",LUA_LIBRARIES="$(LUALIB)",INSTALL_LIBDIR="$(LIBDIR)"}
}