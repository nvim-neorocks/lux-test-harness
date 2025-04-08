local git_ref = 'a0b34a4c5ca9b0a89f490cc89b0993cd67baaa35'
local modrev = '2.0.1'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/commons.nvim'

rockspec_format = '3.0'
package = 'commons.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'The commons lua library for Neovim plugin project.',
  detailed = '',
  labels = { 'neovim', 'vim' } ,
  homepage = 'https://linrongbin16.github.io/commons.nvim/',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'commons.nvim-' .. 'a0b34a4c5ca9b0a89f490cc89b0993cd67baaa35',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
