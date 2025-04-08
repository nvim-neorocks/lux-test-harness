rockspec_format = '3.0'
package = 'wowcig'
version = '0.16.1-0'
description = {
  summary = 'WoW client interface generator',
  license = 'MIT',
  homepage = 'https://github.com/ferronn-dev/wowcig',
  issues_url = 'https://github.com/ferronn-dev/wowcig/issues',
  maintainer = 'ferronn@ferronn.dev',
  labels = {'wow'},
}
source = {
  url = 'https://github.com/ferronn-dev/wowcig/archive/refs/tags/v0.16.1.tar.gz',
  dir = 'wowcig-0.16.1',
}
dependencies = {
  'lua = 5.1',
  'argparse',
  'lua-path',
  'lua-zip',
  'luabitop',
  'luacasc',
  'luadbd',
  'luaexpat',
  'luafilesystem',
  'luasocket',
  'lzlib',
  'md5',
  'penlight',
}
build = {
  type = 'none',
  install = {
    bin = {
      wowcig = 'wowcig.lua',
    },
  },
}
