package = "apioak"
version = "0.3.0-1"
supported_platforms = {"linux"}

source = {
    url = "git://github.com/apioak/apioak",
    branch = "v0.3.0",
}

description = {
    summary = "APIOAK provides full life cycle management of API release, management, and operation and maintenance.",
    homepage = "https://github.com/apioak/apioak",
    license = "Apache License 2.0",
    maintainer = "Janko <shuaijinchao@gmail.com>"
}

dependencies = {
    "lua-resty-template = 1.9",
    "lua-resty-etcd = 0.7",
    "lua-resty-balancer = 0.02rc5",
    "lua-resty-ngxvar = 0.4",
    "lua-resty-jit-uuid = 0.0.7",
    "lua-resty-jwt = 0.2.0",
    "lua-resty-libr3 = 1.2-0",
    "lua-resty-http = 0.15-0",
    "jsonschema = 0.4",
    "luasocket = 3.0rc1-2",
    "luafilesystem = 1.7.0-2",
    "lua-tinyyaml = 0.1",
    "multipart = 0.5.5-1",
    "penlight = 1.5.4-1",
}

build = {
    type = "make",
    build_variables = {
        CFLAGS="$(CFLAGS)",
        LIBFLAG="$(LIBFLAG)",
        LUA_LIBDIR="$(LUA_LIBDIR)",
        LUA_BINDIR="$(LUA_BINDIR)",
        LUA_INCDIR="$(LUA_INCDIR)",
        LUA="$(LUA)",
    },
    install_variables = {
        INST_PREFIX="$(PREFIX)",
        INST_BINDIR="$(BINDIR)",
        INST_LIBDIR="$(LIBDIR)",
        INST_LUADIR="$(LUADIR)",
        INST_CONFDIR="$(CONFDIR)",
    },
}
