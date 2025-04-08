local git_ref = 'v1.3.1'
local modrev = '1.3.1'
local specrev = '1'

local repo_url = 'https://github.com/carbon-steel/detour.nvim'

rockspec_format = '3.0'
package = 'detour.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Use popup windows to navigate files/buffer and to contain shells/TUIs',
  detailed = '',
  labels = { 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/carbon-steel/detour.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'detour.nvim-' .. '1.3.1',
}

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
