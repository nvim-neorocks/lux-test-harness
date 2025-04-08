local git_ref = '3531de0c5a360fbfa00a8a736b93407fb937c6fb'
local modrev = '3.0.1'
local specrev = '1'

local repo_url = 'https://github.com/kylechui/nvim-surround'

rockspec_format = '3.0'
package = 'nvim-surround'
version = modrev ..'-'.. specrev

description = {
  summary = 'Add/change/delete surrounding delimiter pairs with ease.',
  detailed = '',
  labels = { 'lua', 'neovim', 'neovim-plugin', 'nvim', 'surround', 'ucla-opensource' } ,
  homepage = 'https://github.com/kylechui/nvim-surround',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-surround-' .. '3531de0c5a360fbfa00a8a736b93407fb937c6fb',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'queries' } ,
}
