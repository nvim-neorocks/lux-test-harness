rockspec_format = '3.0'
package = 'flock'
version = 'v1.0.0-1'

source = {
  url = 'git+https://github.com/cmotl/lua-flock',
  tag = 'v1.0.0', -- this will be replaced by the release workflow
}

description = {
  summary = '',
  detailed = [[
  ]],
  license = 'MIT',
  homepage = 'https://github.com/cmotl/lua-stream',
  issues_url = 'https://github.com/cmotl/lua-stream/issues',
  maintainer = 'Christopher Motl',
}

dependencies = {
  'lua >= 5.1, <= 5.4',
  'torch_threads = v1.0.0',
  'torch_torch7 = v1.0.0',
  'gc_metatable = v1.0.0',
}

test_dependencies = {
  'busted',
  'string_lambda',
}

build = {
  type = 'builtin',
  modules = {
    flock = 'lib/flock.lua',
  },
}

test = {
  type = 'busted',
  flags = '--verbose',
}
