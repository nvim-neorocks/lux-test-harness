package = "KeyAuthValuePass"
version = "1.2-1"
source = {
    url = "git://github.com/jhitzke/key-auth-value-pass",
    tag = "1.2-1"
}
description = {
    summary = "Pass a value via custom_id using key-auth, using a given prefix",
    license = "MIT/X11"
}
dependencies = {
    "lua ~> 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["kong.plugins.key-auth-value-pass.handler"] = "src/handler.lua",
        ["kong.plugins.key-auth-value-pass.schema"] = "src/schema.lua"
    }
}
