package = "coronest"
version = "1.0-16"

source = {
  url    = "git+https://github.com/saucisson/lua-coronest.git",
  branch = "1.0",
}

description = {
  summary    = "Coroutines that allow nesting",
  detailed   = [[
Coroutines are a powerful notion to suspend and resume execution of
lightweight threads. They can be used for instance for scheduling,
or for iteration.

When mixing these two uses, a problem arises: there is no way to specify
which `coroutine.resume` should intercept a `coroutine.yield`.

This module provides a thin wrapper around the standard `coroutine`
module to allow the definition of complex behaviors with nested
coroutines.
  ]],
  license    = "MIT/X11",
  homepage   = "https://github.com/saucisson/lua-coronest",
  maintainer = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type    = "builtin",
  modules = {
    ["coroutine.make"] = "src/coroutine/make.lua",
  },
}
