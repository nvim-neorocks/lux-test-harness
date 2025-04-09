package = 'pegasus-mr'
version = '0.9.0-10'

source = {
  url = 'git://github.com/maurorappa/pegasus.lua.git',
  tag = 'master'
}

description = {
  summary = 'Pegasus.lua is a http server to work with web applications written in Lua language.',
  homepage = 'https://github.com/EvandroLG/pegasus.lua',
  maintainer = 'Evandro Leopoldino Gonçalves (@evandrolg) <evandrolgoncalves@gmail.com>',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}

dependencies = {
  "lua >= 5.1",
  "mimetypes >= 1.0.0-1",
  "luasocket >= 0.1.0-0",
  "luafilesystem >= 1.6",
}

build = {
  type = "builtin",
  modules = {
    ['pegasus.init']     = "src/pegasus/init.lua",
    ['pegasus.handler']  = 'src/pegasus/handler.lua',
    ['pegasus.request']  = 'src/pegasus/request.lua',
    ['pegasus.response'] = 'src/pegasus/response.lua',
  }
}
