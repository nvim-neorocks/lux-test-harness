local git_ref = 'v2.5.3'
local modrev = '2.5.3'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorocks/rocks-git.nvim'

rockspec_format = '3.0'
package = 'rocks-git.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Use rocks.nvim to install plugins from git!',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-neorocks/rocks-git.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'rocks.nvim >= 2.12.0', 'nvim-nio' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rocks-git.nvim-' .. '2.5.3',
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
