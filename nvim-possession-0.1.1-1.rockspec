local git_ref = 'v0.1.1'
local modrev = '0.1.1'
local specrev = '-1'

local repo_url = 'https://github.com/gennaro-tedesco/nvim-possession'

rockspec_format = '3.0'
package = 'nvim-possession'
version = modrev .. specrev

description = {
  summary = '📌 the no-nonsense session manager',
  detailed = '',
  labels = { 'lua', 'neovim' } ,
  homepage = 'https://github.com/gennaro-tedesco/nvim-possession',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'fzf-lua' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-possession-' .. '0.1.1',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
