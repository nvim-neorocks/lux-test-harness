package = 'torch_cwrap'
version = 'v1.0.0-1'

source = {
  url = 'git://github.com/cmotl/torch-cwrap.git',
}

description = {
  summary = 'Advanced automatic wrapper for C functions',
  detailed = [[
   ]],
  homepage = 'https://github.com/torch/cwrap',
  license = 'BSD',
}

dependencies = {
  'lua >= 5.1',
}

build = {
  type = 'builtin',
  modules = {
    ['cwrap.init'] = 'init.lua',
    ['cwrap.cinterface'] = 'cinterface.lua',
    ['cwrap.types'] = 'types.lua',
  },
  install = {
    lua = {
      ['cwrap.README'] = 'README.md',
    },
  },
}
