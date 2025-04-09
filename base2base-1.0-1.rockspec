package = "base2base"
version = "1.0-1"

source = {
    url = "git://github.com/catwell/base2base.git",
    branch = "v1.0",
}

description = {
    summary = "A base-to-base converter",
    detailed = [[
        Convert strings representing numbers between different bases.
    ]],
    homepage = "http://github.com/catwell/base2base",
    license = "MIT/X11",
}

dependencies = { "lua >= 5.3" }

build = {
    type = "none",
    install = { lua = {base2base = "base2base.lua"} },
    copy_directories = {},
}
