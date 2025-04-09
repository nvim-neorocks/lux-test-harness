package = 'lua-glob-pattern'
version = '0.2.1.20120406-1'
source = {
  url = 'git://github.com/davidm/lua-glob-pattern.git',
}
description = {
  summary = 'Convert glob to Lua string pattern',
  detailed =
    'Convert glob to Lua string pattern.',
  license = 'MIT/X11',
  homepage = 'https://github.com/davidm/lua-glob-pattern',
  maintainer = 'David Manura'
}
dependencies = {
  'lua >= 5.1' -- including 5.2
}
build = {
  type = 'builtin',
  modules = {
    ['globtopattern'] = 'lua/globtopattern.lua'
  }
}
-- VERSIONFROM="lua/globtopattern.lua"
-- ROCKVERSION="1"
-- ROCKSCMVERSION="1"
