package = "dub"
version = "2.2.4-1"
source = {
  url = 'git://github.com/lubyk/dub',
  tag = 'REL-2.2.4',
  dir = 'dub',
}
description = {
  summary = "Lua binding generator from C/C++ code (uses Doxygen to parse C++ comments).",
  detailed = [[
    A powerful binding generator for C/C++ code with support for attributes,
    callbacks, errors on callbacks, enums, nested classes, operators, public
    attributes, etc.
    
    Full documentation: http://doc.lubyk.org/dub.html
  ]],
  homepage = "http://doc.lubyk.org/dub.html",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1, < 5.4",
  "lub >= 1.0.4, < 2",
  "xml ~> 1",
  "yaml ~> 1",
}
build = {
  type = 'builtin',
  modules = {
    -- Plain Lua files
    ['dub'            ] = 'dub/init.lua',
    ['dub.Class'      ] = 'dub/Class.lua',
    ['dub.CTemplate'  ] = 'dub/CTemplate.lua',
    ['dub.Function'   ] = 'dub/Function.lua',
    ['dub.Inspector'  ] = 'dub/Inspector.lua',
    ['dub.LuaBinder'  ] = 'dub/LuaBinder.lua',
    ['dub.MemoryStorage'] = 'dub/MemoryStorage.lua',
    ['dub.Namespace'  ] = 'dub/Namespace.lua',
    ['dub.OptParser'  ] = 'dub/OptParser.lua',
  },
  install = {
    -- Assets needed by library.
    lua = {
      ['dub.assets.Doxyfile'           ] = 'dub/assets/Doxyfile',
      ['dub.assets.lua.class_cpp'      ] = 'dub/assets/lua/class.cpp',
      ['dub.assets.lua.dub.dub_cpp'    ] = 'dub/assets/lua/dub/dub.cpp',
      ['dub.assets.lua.dub.dub_h'      ] = 'dub/assets/lua/dub/dub.h',
      ['dub.assets.lua.lib_cpp'        ] = 'dub/assets/lua/lib.cpp',
    },
  },
}

