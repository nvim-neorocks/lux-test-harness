package = "resty-raven"
 version = "1.0-2"
 source = {
    url = "git://github.com/UseFedora/raven-lua",
 }
 description = {
    summary = "Lua (openresty) client for Sentry.",
    detailed = [[
       Send sentry events/alerts from open resty app.
    ]],
    homepage = "https://github.com/UseFedora/raven-lua",
    license = "MIT/X11"
 }
 dependencies = {
    "lua >= 5.1",
 }
 build = {
    type = "builtin",
    modules =  {
      raven = "raven.lua"
    }
 }
