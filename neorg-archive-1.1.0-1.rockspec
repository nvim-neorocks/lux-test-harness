local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/bottd/neorg-archive'

rockspec_format = '3.0'
package = 'neorg-archive'
version = modrev ..'-'.. specrev

description = {
  summary = 'Create and manage an archival workspace for your Neorg notes',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/bottd/neorg-archive',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neorg' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neorg-archive-' .. '1.1.0',
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
