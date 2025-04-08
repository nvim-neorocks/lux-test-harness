local git_ref = 'v1.3.0'
local modrev = '1.3.0'
local specrev = '1'

local repo_url = 'https://github.com/Kibadda/kanban.nvim'

rockspec_format = '3.0'
package = 'kanban.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/Kibadda/kanban.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'kanban.nvim-' .. '1.3.0',
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
