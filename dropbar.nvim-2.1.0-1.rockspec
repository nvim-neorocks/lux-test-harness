local git_ref = '43ca4a01f5144d2ca4d3782fd30653112083f322'
local modrev = '2.1.0'
local specrev = '1'

local repo_url = 'https://github.com/Bekaboo/dropbar.nvim'

rockspec_format = '3.0'
package = 'dropbar.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'IDE-like breadcrumbs, out of the box',
  detailed = [[
`dropbar.nvim` provides a polished, IDE-like, highly-customizable
winbar for neovim with drop-down menu support and multiple backends.]],
  labels = { 'breadcrumbs', 'lsp', 'neovim', 'neovim-plugin', 'nvim', 'nvim-plugin', 'treesitter', 'winbar' } ,
  homepage = 'https://github.com/Bekaboo/dropbar.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'dropbar.nvim-' .. '43ca4a01f5144d2ca4d3782fd30653112083f322',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
