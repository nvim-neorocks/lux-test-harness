package = 'str'
version = '0.1.0-0'

source = {
  url = 'git://github.com/evandrolg/pegasus.lua.git',
}

description = {
  summary = 'str is an string module with useful methods that do not exist in Lua core',
  homepage = 'https://github.com/EvandroLG/str',
  maintainer = 'Evandro Leopoldino Gonçalves (@evandrolg) <evandrolgoncalves@gmail.com>',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}

dependencies = {
  "lua >= 5.1",
  "luautf8 >= 0.1.1-1"
}

build = {
  type = "builtin",
  modules = {
    ['str'] = "str.lua"
  }
}
