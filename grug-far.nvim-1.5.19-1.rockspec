local git_ref = '6ef402861468c6bd987155be17a34ba4291dc1d0'
local modrev = '1.5.19'
local specrev = '1'

local repo_url = 'https://github.com/MagicDuck/grug-far.nvim'

rockspec_format = '3.0'
package = 'grug-far.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Find And Replace plugin for neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/MagicDuck/grug-far.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'grug-far.nvim-' .. '6ef402861468c6bd987155be17a34ba4291dc1d0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
