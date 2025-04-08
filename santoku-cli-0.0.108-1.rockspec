

package = "santoku-cli"
version = "0.0.108-1"
rockspec_format = "3.0"

source = {
  url = "https://github.com/treadwelllane/lua-santoku-cli/releases/download/0.0.108-1/santoku-cli-0.0.108-1.tar.gz",
}

description = {
  homepage = "https://github.com/treadwelllane/lua-santoku-cli",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "santoku >= 0.0.119-1",
  "luafilesystem >= 1.8.0-1",
  "argparse >= 0.7.1-1"
}

build = {
  type = "make",
  makefile = "Makefile",
  variables = {
    LIB_EXTENSION = "$(LIB_EXTENSION)",
  },
  build_variables = {
    CC = "$(CC)",
    CFLAGS = "$(CFLAGS)",
    LIBFLAG = "$(LIBFLAG)",
    LUA_BINDIR = "$(LUA_BINDIR)",
    LUA_INCDIR = "$(LUA_INCDIR)",
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

