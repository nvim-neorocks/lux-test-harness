local git_ref = '0.2'
local modrev = '0.2'
local specrev = '1'

local repo_url = 'https://github.com/iguanacucumber/mag-nvim-lsp'

rockspec_format = '3.0'
package = 'mag-nvim-lsp'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = [[
A completion engine source for magazine.nvim]],
  labels = { 'neovim', 'magazine.nvim' } ,
  homepage = 'https://github.com/iguanacucumber/mag-nvim-lsp',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mag-nvim-lsp-' .. '0.2',
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
