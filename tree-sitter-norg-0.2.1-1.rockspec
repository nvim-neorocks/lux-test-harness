local git_ref = 'v0.2.1'
local modrev = '0.2.1'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorg/tree-sitter-norg'

rockspec_format = '3.0'
package = 'tree-sitter-norg'
version = modrev ..'-'.. specrev

description = {
  summary = 'The official tree-sitter parser for Norg documents.',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/nvim-neorg/tree-sitter-norg',
  license = 'MIT'
}

build_dependencies = {
  'luarocks-build-treesitter-parser >= 1.3.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-norg-' .. '0.2.1',
}

build = {
  type = "treesitter-parser",
  lang = "norg",
  sources = { "src/parser.c", "src/scanner.cc" },
  variables = {
      LIBFLAG = "-std=c++11",
  },
}
