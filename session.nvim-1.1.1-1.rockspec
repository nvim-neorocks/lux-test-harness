local git_ref = 'v1.1.1'
local modrev = '1.1.1'
local specrev = '1'

local repo_url = 'https://github.com/Kibadda/session.nvim'

rockspec_format = '3.0'
package = 'session.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'simple session management plugin',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/Kibadda/session.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'session.nvim-' .. '1.1.1',
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
