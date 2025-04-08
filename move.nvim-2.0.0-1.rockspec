local git_ref = 'v2.0.0'
local modrev = '2.0.0'
local specrev = '1'

local repo_url = 'https://github.com/fedepujol/move.nvim'

rockspec_format = '3.0'
package = 'move.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Gain the power to move lines and blocks and auto-indent them!',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/fedepujol/move.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'move.nvim-' .. '2.0.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
