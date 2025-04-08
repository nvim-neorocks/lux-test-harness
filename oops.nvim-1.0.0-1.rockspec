local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/OXY2DEV/oops.nvim'

rockspec_format = '3.0'
package = 'oops.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Attempts to fix typos in the last run command',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/OXY2DEV/oops.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'oops.nvim-' .. '1.0.0',
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
