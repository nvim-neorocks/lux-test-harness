package = 'lua-jet'
version = 'v0.9-1'

source = {
  url = 'git://github.com/lipp/lua-jet.git',
  tag = 'v0.9'
}

description = {
  summary = 'The JSON Bus. Daemon and Peer implementations for Lua.',
  homepage = 'http://jetbus.io',
  license = 'MIT/X11'
}

dependencies = {
  'lua >= 5.1',
  'lua-cjson >= 1.0',
  'lua-websockets',
  'luasocket',
  'lua-ev',
  'lpack'
}

build = {
  type = 'none',
  install = {
    lua = {
      ['jet'] = 'src/jet.lua',
      ['jet.peer'] = 'src/jet/peer.lua',
      ['jet.socket'] = 'src/jet/socket.lua',
      ['jet.daemon'] = 'src/jet/daemon.lua'
    },
    bin = {
      'bin/jetd.lua',
    }
  }
}
