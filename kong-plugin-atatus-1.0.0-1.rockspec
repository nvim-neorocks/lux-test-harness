package = "kong-plugin-atatus"  -- TODO: rename, must match the info in the filename of this rockspec!
                                -- as a convention; stick to the prefix: `kong-plugin-`
version = "1.0.0-1"        -- TODO: renumber, must match the info in the filename of this rockspec!
-- The version '1.0.0' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- TODO: This is the name to set in the Kong configuration `custom_plugins` setting.
-- Here we extract it from the package name.
local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "atatus"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://bitbucket.org/atatus/kong-plugin-atatus.git",
  tag = "1.0.0"
}

description = {
  summary = "Atatus plugin for kong",
  homepage = "https://www.atatus.com",
  license = "MIT"
}

dependencies = {
  "lua-resty-http",
  "lua-zlib"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.atatus.handler"] = "kong/plugins/atatus/handler.lua",
    ["kong.plugins.atatus.governance_helpers"] = "kong/plugins/atatus/governance_helpers.lua",
    ["kong.plugins.atatus.atatus_gov"] = "kong/plugins/atatus/atatus_gov.lua",
    ["kong.plugins.atatus.schema"] = "kong/plugins/atatus/schema.lua",
    ["kong.plugins.atatus.regex_config_helpers"] = "kong/plugins/atatus/regex_config_helpers.lua",
    ["kong.plugins.atatus.log"] = "kong/plugins/atatus/log.lua",
    ["kong.plugins.atatus.atatus_ser"] = "kong/plugins/atatus/atatus_ser.lua",
    ["kong.plugins.atatus.helpers"] = "kong/plugins/atatus/helpers.lua",
    ["kong.plugins.atatus.connection"] = "kong/plugins/atatus/connection.lua",
    ["kong.plugins.atatus.client_ip"] = "kong/plugins/atatus/client_ip.lua",
    ["kong.plugins.atatus.zzlib"] = "kong/plugins/atatus/zzlib.lua",
    ["kong.plugins.atatus.base64"] = "kong/plugins/atatus/base64.lua"
  }
}
