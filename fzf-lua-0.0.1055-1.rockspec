local git_ref = 'a1a2d0f42eaec400cc6918a8e898fc1f9c4dbc5f'
local modrev = '0.0.1055'
local specrev = '-1'

local repo_url = 'https://github.com/ibhagwan/fzf-lua'

rockspec_format = '3.0'
package = 'fzf-lua'
version = modrev .. specrev

description = {
  summary = 'Improved fzf.vim written in lua',
  detailed = '',
  labels = { 'fzf', 'lua', 'neovim', 'neovim-plugin', 'nvim' } ,
  homepage = 'https://github.com/ibhagwan/fzf-lua',
  license = 'AGPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fzf-lua-' .. 'a1a2d0f42eaec400cc6918a8e898fc1f9c4dbc5f',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
