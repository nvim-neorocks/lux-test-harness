package = "kong-plugin-concurrent-connections-quota" -- must match the info in the filename of this rockspec!
                                                     -- as a convention; stick to the prefix: `kong-plugin-`
version = "0.1.2-1"                                  -- renumber, must match the info in the filename of this rockspec!
-- The version '0.1.2' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- This is the name to set in the Kong configuration `plugins` setting.
-- Here we extract it from the package name.
local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "concurrent-connections-quota"

rockspec_format = "3.0"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/figment-networks/kong-plugin-concurrent-connections-quota.git",
  tag = "0.1.2"
}

description = {
  summary = "Kong plugin to make sure user can have a limited number of WebSocket connections at a time..",
  homepage = "https://github.com/figment-networks/kong-plugin-concurrent-connections-quota",
  license = "MIT"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"]  = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".policies"]  = "kong/plugins/"..pluginName.."/policies/init.lua",
  }
}
