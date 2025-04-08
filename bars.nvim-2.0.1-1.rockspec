local git_ref = 'v2.0.1'
local modrev = '2.0.1'
local specrev = '1'

local repo_url = 'https://github.com/OXY2DEV/bars.nvim'

rockspec_format = '3.0'
package = 'bars.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A starting point/guide for creating custom statusline, statuscolumn, tabline & winbar for Neovim.',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/OXY2DEV/bars.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'bars.nvim-' .. '2.0.1',
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
