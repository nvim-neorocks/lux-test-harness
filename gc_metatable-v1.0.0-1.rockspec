rockspec_format = '3.0'
package = 'gc_metatable'
version = 'v1.0.0-1'

source = {
  url = 'git+https://github.com/cmotl/lua-gc_metatable',
  branch = 'v1.0.0',
}

description = {
  summary = '',
  detailed = [[
  ]],
  license = 'MIT',
  homepage = 'https://github.com/cmotl/lua-gc_metatable',
  issues_url = 'https://github.com/cmotl/lua-gc_metatable/issues',
  maintainer = 'Christopher Motl',
}

dependencies = {
  'lua >= 5.1, <= 5.4',
}

test_dependencies = {
  'busted',
}

build = {
  type = 'builtin',
  modules = {
    gc_metatable = 'lib/gc_metatable.lua',
  },
}

test = {
  type = 'busted',
  flags = '--verbose',
}
