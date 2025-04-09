local git_ref = 'e45e194ab6f53ff48c242b3797ca1cc3bd764d4a'
local modrev = '0.2.4'
local specrev = '1'

local repo_url = 'https://github.com/BirdeeHub/lzextras'

rockspec_format = '3.0'
package = 'lzextras'
version = modrev ..'-'.. specrev

description = {
  summary = 'A collection of utilities and handlers for BirdeeHub/lze',
  detailed = [[
A collection of extensions for BirdeeHub/lze]],
  labels = { },
  homepage = 'https://github.com/BirdeeHub/lzextras',
  license = 'GPL-2+'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lzextras-' .. 'e45e194ab6f53ff48c242b3797ca1cc3bd764d4a',
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
