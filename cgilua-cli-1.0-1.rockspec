package = "cgilua-cli"
version = "1.0-1"
source = {
    url = "git://github.com/rousbound/cgilua-cli"
}

description = {
    summary = "CGILua CLI",
    detailed = "CGILua CLI Interface",
    license = "MIT",
}

dependencies = {
    "lua = 5.3",
    "luafilesystem"
}

build = {
    type = "builtin",
    modules = { 
        ["cgilua_cli.templates"] = "src/templates.lua"
    },
    install = {
        bin = {
            cgilua = "src/cgilua"
        },
    }
}
