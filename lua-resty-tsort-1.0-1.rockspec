package = "lua-resty-tsort"
version = "1.0-1"
source = {
    url = "git://github.com/bungle/lua-resty-tsort.git",
    branch = "v1.0"
}
description = {
    summary = "Performs a topological sort on input data",
    detailed = "A simple and minimal implementation of topological sorting.",
    homepage = "https://github.com/bungle/lua-resty-tsort",
    maintainer = "Aapo Talvensaari <aapo.talvensaari@gmail.com>",
    license = "BSD"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["resty.tsort"] = "lib/resty/tsort.lua"
    }
}
