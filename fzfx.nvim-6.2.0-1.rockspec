local git_ref = '69b619375620c901c0eae1891bd0fdb48dad85e5'
local modrev = '6.2.0'
local specrev = '1'

local repo_url = 'https://github.com/linrongbin16/fzfx.nvim'

rockspec_format = '3.0'
package = 'fzfx.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim fuzzy finder that updates on every keystroke.',
  detailed = '',
  labels = { 'neovim', 'vim' } ,
  homepage = 'https://github.com/linrongbin16/fzfx.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fzfx.nvim-' .. '69b619375620c901c0eae1891bd0fdb48dad85e5',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'bin', 'docs', 'spec' } ,
}
