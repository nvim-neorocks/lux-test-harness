local git_ref = 'v9.1.0'
local modrev = '9.1.0'
local specrev = '1'

local repo_url = 'https://github.com/mikavilpas/yazi.nvim'

rockspec_format = '3.0'
package = 'yazi.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim Plugin for the yazi terminal file manager',
  detailed = '',
  labels = { 'neovim', 'plugin', 'yazi', 'yazi-plugin' } ,
  homepage = 'https://github.com/mikavilpas/yazi.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'yazi.nvim-' .. '9.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
