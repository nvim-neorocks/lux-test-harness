

package = "tbhss"
version = "0.0.51-1"
rockspec_format = "3.0"

source = {
  url = "https://github.com/treadwelllane/lua-tbhss/releases/download/0.0.51-1/tbhss-0.0.51-1.tar.gz",
}

description = {
  homepage = "https://github.com/treadwelllane/lua-tbhss",
  license = "UNLICENSED"
}

dependencies = {
  "lua == 5.1",
  "lua-cjson >= 2.1.0.10-1",
  "argparse >= 0.7.1-1",
  "santoku == 0.0.256-1",
  "santoku-fs == 0.0.33-1",
  "santoku-system == 0.0.46-1",
  "santoku-tsetlin == 0.0.71-1",
  "santoku-bitmap == 0.0.40-1",
  "santoku-matrix == 0.0.13-1",
  "santoku-sqlite == 0.0.22-1",
  "santoku-sqlite-migrate == 0.0.13-1",
  "lsqlite3 >= 0.9.5-1",
  "lpeg == 1.1.0-2"
}

external_dependencies = {
  
}

build = {
  type = "make",
  makefile = "Makefile",
  variables = {
    LIB_EXTENSION = "$(LIB_EXTENSION)",
  },
  build_variables = {
    CC = "$(CC)",
    CXX = "$(CXX)",
    AR = "$(AR)",
    LD = "$(LD)",
    NM = "$(NM)",
    LDSHARED = "$(LDSHARED)",
    RANLIB = "$(RANLIB)",
    CFLAGS = "$(CFLAGS)",
    LIBFLAG = "$(LIBFLAG)",
    LUA_BINDIR = "$(LUA_BINDIR)",
    LUA_INCDIR = "$(LUA_INCDIR)",
    LUA_LIBDIR = "$(LUA_LIBDIR)",
    LUA_LIBDIR = "$(LUA_LIBDIR)",
    LUA = "$(LUA)",
  },
  install_variables = {
    INST_PREFIX = "$(PREFIX)",
    INST_BINDIR = "$(BINDIR)",
    INST_LIBDIR = "$(LIBDIR)",
    INST_LUADIR = "$(LUADIR)",
    INST_CONFDIR = "$(CONFDIR)",
  }
}