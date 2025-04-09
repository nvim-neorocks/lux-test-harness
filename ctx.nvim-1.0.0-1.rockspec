local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/S1M0N38/ctx.nvim'

rockspec_format = '3.0'
package = 'ctx.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '⧉ Quickfix / Location List Items → Markdown',
  detailed = [[
A template for Neovim plugin]],
  labels = { },
  homepage = 'https://github.com/S1M0N38/ctx.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ctx.nvim-' .. '1.0.0',
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
