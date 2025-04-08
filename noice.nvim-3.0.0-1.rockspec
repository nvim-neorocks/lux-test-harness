local git_ref = 'v3.0.0'
local modrev = '3.0.0'
local specrev = '1'

local repo_url = 'https://github.com/folke/noice.nvim'

rockspec_format = '3.0'
package = 'noice.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/noice.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'nui.nvim', 'nvim-notify' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'noice.nvim-' .. '3.0.0',
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
