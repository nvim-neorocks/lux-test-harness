local git_ref = 'v0.4.1'
local modrev = '0.4.1'
local specrev = '1'

local repo_url = 'https://github.com/MisanthropicBit/neotest-busted'

rockspec_format = '3.0'
package = 'neotest-busted'
version = modrev ..'-'.. specrev

description = {
  summary = 'Highly experimental neotest adapter for running tests using busted',
  detailed = '',
  labels = { 'busted', 'neotest', 'neovim', 'neovim-plugin', 'testing', 'tests' } ,
  homepage = 'https://github.com/MisanthropicBit/neotest-busted',
  license = 'BSD-3-Clause'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-busted-' .. '0.4.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
