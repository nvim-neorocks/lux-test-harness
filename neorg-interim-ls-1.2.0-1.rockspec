local git_ref = 'v1.2.0'
local modrev = '1.2.0'
local specrev = '1'

local repo_url = 'https://github.com/benlubas/neorg-interim-ls'

rockspec_format = '3.0'
package = 'neorg-interim-ls'
version = modrev ..'-'.. specrev

description = {
  summary = 'Temporarily providing a limited set of LSP features to neorg',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/benlubas/neorg-interim-ls',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neorg' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neorg-interim-ls-' .. '1.2.0',
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
