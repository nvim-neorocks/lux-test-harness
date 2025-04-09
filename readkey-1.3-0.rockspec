package = "readkey"
version = "1.3-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/readkey-1.3.tar.gz",
   md5 = "2aa8598001945d793408af327aae1a3d"
}
description = {
   summary = "simple terminal control, like CPAN's Term::ReadKey",
   detailed = [[
      This module is modelled on the CPAN Term::ReadKey
        http://search.cpan.org/perldoc?Term::ReadKey
      It provides simple control over terminal driver modes
      (cbreak, raw, cooked, etc.), support for non-blocking reads,
      and some generalized handy functions for working with terminals.
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/readkey.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >=5.1, <5.3",
   "luaposix >= 31",
   "readline >= 1.3",
   "terminfo >= 1.1",
}
-- external_dependencies = {
--   ALSA = {
--      header  = "alsa/asoundlib.h",
--      library = "asound",
--   }
-- }
build = {
   type = "builtin",
   modules = {
      ["readkey"] = "readkey.lua",
--    ["C-readkey"] = {
--       sources   = { "C-readkey.c" },
--         incdirs   = { "$(ALSA_INCDIR)" },
--         libdirs   = { "$(ALSA_LIBDIR)" },
--         libraries = { "asound" },
--    }
   },
   copy_directories = { "doc", "test" }
}
