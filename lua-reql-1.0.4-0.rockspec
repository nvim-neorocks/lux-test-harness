rockspec_format = '1.1'
package = 'lua-reql'
version = '1.0.4-0'
source = {
  url = 'git://github.com/RebirthDB/rebirthdb-lua',
  branch = 'v1.0.4',
}
description = {
  summary = 'A Lua driver for RethinkDB.',
  detailed = [===[
# Lua-ReQL

Rethinkdb driver in Lua

## Installing
- _IF USING LUA 5.1_ `luarocks install luabitop`
- `luarocks install lua-reql`

## Dev Dependencies
- Lua >= 5.1
- Luarocks
  - busted
  - luacheck
  - luacov
  - _IF USING LUA 5.1_ luabitop
- RethinkDB

## Testing
- `luacheck .`
- `busted -c`
- `luacov`

## Installing from source
- `luarocks make`

[![Build Status](https://travis-ci.org/RebirthDB/rebirthdb-lua.svg?branch=master)](https://travis-ci.org/RebirthDB/rebirthdb-lua)

[![Coverage Status](https://coveralls.io/repos/github/RebirthDB/rebirthdb-lua/badge.svg?branch=master)](https://coveralls.io/github/RebirthDB/rebirthdb-lua?branch=master)
  ]===],
  homepage = 'https://github.com/RebirthDB/rebirthdb-lua/wiki',
  license = 'Apache',
}
dependencies = {
  'lua >= 5.1, < 5.4',
  'luacrypto ~> 0.3',
  'luajson ~> 1.3',
  'luasec ~> 0.6',
  'luasocket ~> 3.0',
  'semver ~> 1.2',
}
build = {
  type = 'builtin',
  modules = {
    rethinkdb = 'src/rethinkdb.lua',
    ['rethinkdb.connection_instance'] = 'src/rethinkdb/connection_instance.lua',
    ['rethinkdb.connection'] = 'src/rethinkdb/connection.lua',
    ['rethinkdb.connector'] = 'src/rethinkdb/connector.lua',
    ['rethinkdb.cursor'] = 'src/rethinkdb/cursor.lua',
    ['rethinkdb.depreciate'] = 'src/rethinkdb/depreciate.lua',
    ['rethinkdb.errors'] = 'src/rethinkdb/errors.lua',
    ['rethinkdb.reql'] = 'src/rethinkdb/reql.lua',
    ['rethinkdb.rtype'] = 'src/rethinkdb/rtype.lua',
    ['rethinkdb.internal.bits51'] = 'src/rethinkdb/internal/bits51.lua',
    ['rethinkdb.internal.bits53'] = 'src/rethinkdb/internal/bits53.lua',
    ['rethinkdb.internal.bytes_to_int'] = 'src/rethinkdb/internal/bytes_to_int.lua',
    ['rethinkdb.internal.convert_pseudotype'] = 'src/rethinkdb/internal/convert_pseudotype.lua',
    ['rethinkdb.internal.current_handshake'] = 'src/rethinkdb/internal/current_handshake.lua',
    ['rethinkdb.internal.int_to_bytes'] = 'src/rethinkdb/internal/int_to_bytes.lua',
    ['rethinkdb.internal.pbkdf'] = 'src/rethinkdb/internal/pbkdf.lua',
    ['rethinkdb.internal.protect'] = 'src/rethinkdb/internal/protect.lua',
    ['rethinkdb.internal.protocol'] = 'src/rethinkdb/internal/protocol.lua',
    ['rethinkdb.internal.protodef'] = 'src/rethinkdb/internal/protodef.lua',
    ['rethinkdb.internal.socket'] = 'src/rethinkdb/internal/socket.lua',
    ['rethinkdb.internal.utilities'] = 'src/rethinkdb/internal/utilities.lua',
  }
}
