package = "TagLib"
version = "1.0.0-1"

source = {
  url = "https://github.com/jprjr/lua-taglib/releases/download/v1.0.0/lua-taglib-1.0.0.tar.gz"
}

description = {
  summary = "Binding to TagLib Audio Meta-Data Library",
  homepage = "https://github.com/jprjr/lua-taglib",
  license = "MIT"
}

build = {
  type = "cmake",
  variables = {
    ["CMODULE_INSTALL_DIR"] = "$(LIBDIR)",
    ["LUA_INCLUDE_DIR"] = "$(LUA_INCDIR)",
    ["LUAROCKS_TAGLIB_INCLUDE_DIR"] = "$(TAGLIB_INCLUDE_DIR)",
    ["LUAROCKS_TAGLIB_LIBRARY"] = "$(TAGLIB_LIBRARY)",
    ["LUAROCKS_TAGLIB_USE_ZLIB"] = "$(TAGLIB_USE_ZLIB)",
    ["LUAROCKS_ZLIB_INCLUDE_DIR"] = "$(ZLIB_INCLUDE_DIR)",
    ["LUAROCKS_ZLIB_LIBRARY"] = "$(ZLIB_LIBRARY)",
  },
  platforms = { windows = { variables = {
    LUA_LIBRARY = "$(LUA_LIBDIR)/$(LUALIB)"
  }}}
}

dependencies = {
  "lua >= 5.1",
}

