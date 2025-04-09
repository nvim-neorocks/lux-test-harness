package = "termfx"
version = "0.7.1-1"

source = {
   url = "http://www.tset.de/downloads/termfx-0.7.1-1.tar.gz"
}
description = {
   summary = "A library for fancy terminal output based on termbox.",
   detailed = [[
		TermFX is a library for fancy terminal output based on termbox.
		It means to reduce the weirdness termbox has in places, and
		provide some additional utilities like offscreen buffers.
	]],
   homepage = "http://www.tset.de/termfx/",
   license = "MIT",
   maintainer = "Gunnar Zötl <gz@tset.de>"
}
supported_platforms = {
   "unix"
}
dependencies = {
   "lua >= 5.1, <= 5.3"
}
build = {
   type = "make",
   copy_directories = {
      "doc",
      "samples"
   },
   build_variables = {
      CFLAGS = "$(CFLAGS)",
      LIBFLAG = "$(LIBFLAG)",
      LUA_BINDIR = "$(LUA_BINDIR)",
      LUA_INCDIR = "$(LUA_INCDIR)",
      LUA_LIBDIR = "$(LUA_LIBDIR)"
   },
   install_variables = {
      INST_BINDIR = "$(BINDIR)",
      INST_CONFDIR = "$(CONFDIR)",
      INST_LIBDIR = "$(LIBDIR)",
      INST_LUADIR = "$(LUADIR)",
      INST_PREFIX = "$(PREFIX)"
   }
}
