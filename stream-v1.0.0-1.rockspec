rockspec_format = '3.0'
package = 'stream'
version = 'v1.0.0-1'

source = {
  url = 'git+https://github.com/cmotl/lua-stream',
  tag = 'v1.0.0', -- this will be replaced by the release workflow
}

description = {
  summary = 'Stream operations and aggregations',
  detailed = [[
    Streaming operations and aggregations.
  ]],
  license = 'MIT',
  homepage = 'https://github.com/cmotl/lua-stream',
  issues_url = 'https://github.com/cmotl/lua-stream/issues',
  maintainer = 'Christopher Motl',
}

dependencies = {
  'lua >= 5.1, <= 5.4',
  'penlight = 1.14.0',
}

test_dependencies = {
  'busted',
  'string_lambda',
}

build = {
  type = 'builtin',
  modules = {
    stream = 'lua/stream/init.lua',
    sort_many_streams = 'lua/stream/sort_many_streams.lua',
  },
}

test = {
  type = 'busted',
  flags = '--verbose',
}
