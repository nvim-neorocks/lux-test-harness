package="luaposix"
version="5.1.18-1"
source = {
  url = "https://github.com/downloads/rrthomas/luaposix/luaposix-5.1.18.tar.gz",
  md5 = "6d81da7a5f615f09b31deec799cce3a7",
  dir = "luaposix-5.1.18"
}
description = {
  summary = "Lua bindings for POSIX (including curses)",
  detailed = [[
      A library binding various POSIX APIs, including curses.
      POSIX is the IEEE Portable Operating System Interface standard.
      luaposix is based on lposix and lcurses.
   ]],
  homepage = "http://github.com/rrthomas/luaposix/",
  license = "MIT/X11"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "command",
  build_command = "LUA=$(LUA) CPPFLAGS=-I$(LUA_INCDIR) ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR)",
  install_command = "make install"
}
