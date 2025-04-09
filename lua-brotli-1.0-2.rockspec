package = "lua-brotli"
version = "1.0-2"
source = {
   url = "git://github.com/witchu/lua-brotli"
}
description = {
   summary = "Google brotli binding for Lua.",
   detailed = [[
      Consists of two functions: compress and decompress.
      Both functions take an input string and return an output string.
    ]],
   homepage = "https://github.com/witchu/lua-brotli",
   license = "Apache License 2.0"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "make",
   platforms = {
      windows = {
         modules = {
            brotli = {
               defines = {
                  "LUA_BUILD_AS_DLL", "LUA_LIB", "WIN32_LEAN_AND_MEAN"
               },
               sources = {
                  "lua_brotli.cc", "brotli/enc/backward_references.cc", "brotli/enc/block_splitter.cc", "brotli/enc/brotli_bit_stream.cc", "brotli/enc/encode.cc", "brotli/enc/encode_parallel.cc", "brotli/enc/entropy_encode.cc", "brotli/enc/histogram.cc", "brotli/enc/literal_cost.cc", "brotli/enc/metablock.cc", "brotli/enc/static_dict.cc", "brotli/enc/streams.cc", "brotli/dec/bit_reader.c", "brotli/dec/decode.c", "brotli/dec/huffman.c", "brotli/dec/state.c", "brotli/dec/streams.c"
               }
            }
         },
         type = "builtin"
      }
   },
   build_variables = {
      LIBFLAG = "$(LIBFLAG)",
      LUA = "$(LUA)",
      LUA_BINDIR = "$(LUA_BINDIR)",
      LUA_CFLAGS = "$(CFLAGS)",
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
