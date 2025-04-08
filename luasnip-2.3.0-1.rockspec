local git_ref = 'v2.3.0'
local modrev = '2.3.0'
local specrev = '1'

local repo_url = 'https://github.com/L3MON4D3/LuaSnip'

rockspec_format = '3.0'
package = 'luasnip'
version = modrev ..'-'.. specrev

description = {
  summary = 'Snippet Engine for Neovim written in Lua.',
  detailed = '',
  labels = { 'lua', 'neovim', 'snippet-engine', 'snippets' } ,
  homepage = 'https://github.com/L3MON4D3/LuaSnip',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'jsregexp >= 0.0.5, <= 0.0.7' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'LuaSnip-' .. '2.3.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'plugin', 'syntax' } ,
}
