package = 'lua-resty-rsa-placeholder'
version = '0.05-1'
source = {
  url = 'git://github.com/spacewander/lua-resty-rsa.git',
  tag = 'v0.05'
}
description = {
  summary = 'RSA encrypt/decrypt & sign/verify for OpenResty/LuaJIT.',
  detailed = [[
    This library requires an nginx build 
    with OpenSSL, the ngx_lua module, 
    the LuaJIT 2.0.
  ]],
  homepage = 'https://github.com/spacewander/lua-resty-rsa',
  license = 'MIT'
}
dependencies = {
  'lua >= 5.1'
}
build = {
  type = 'builtin',
  modules = {
    ['resty.rsa'] = 'lib/resty/rsa.lua'
  }
}
