local git_ref = 'v23.1.0'
local modrev = '23.1.0'
local specrev = '1'

local repo_url = 'https://github.com/OXY2DEV/markview.nvim'

rockspec_format = '3.0'
package = 'markview.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'An experimental markdown previewer for Neovim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/OXY2DEV/markview.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'tree-sitter-markdown', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'markview.nvim-' .. '23.1.0',
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
