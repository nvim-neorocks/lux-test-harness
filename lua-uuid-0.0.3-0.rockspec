package = "lua-uuid"
version = "0.0.3-0"

source = {
    url = "git://github.com/luau-project/lua-uuid.git",
    tag = "v0.0.3"
}

description = {
    homepage = "https://github.com/luau-project/lua-uuid",
    summary = [[Lightweight, native GUID / UUID library for Lua]],
    detailed = [=[
lua-uuid is a lightweight, native library for Lua (5.1 and newer) to deal with Universally Unique Id (UUID).

* On Linux, it uses libuuid to generate UUIDs;
* On Windows, it uses the WINAPI rpcrt4 library;
* On MacOS / iOS, it uses the CoreFoundation framework.

Visit the GitHub repository for more information.]=],
    license = "MIT"
}

supported_platforms = { "linux", "win32", "mingw", "cygwin", "macosx" }

dependencies = {
    "lua >= 5.1"
}

external_dependencies = {
    platforms = {
        linux = {
            ["UUID"] = {
                header = "uuid/uuid.h"
            }
        }
    }
}

local function make_plat(plat)
    if (plat == "linux") then
        return {
            type = "builtin",
            modules = {
                ["lua-uuid"] = {
                    sources = { "src/lua-uuid.c" },
                    libraries = { "uuid" },
                    defines = { "LUA_UUID_BUILD_SHARED", "LUA_UUID_USE_LIBUUID" },
                    incdirs = { "src", "$(UUID_INCDIR)" },
                    libdirs = { "$(UUID_LIBDIR)" }
                }
            }
        }
    elseif (plat == "win32" or plat == "mingw" or plat == "cygwin") then
        return {
            type = "builtin",
            modules = {
                ["lua-uuid"] = {
                    sources = { "src/lua-uuid.c" },
                    libraries = { "rpcrt4" },
                    defines = { "LUA_UUID_BUILD_SHARED", "LUA_UUID_USE_WIN32" },
                    incdirs = { "src" },
                    libdirs = {}
                }
            }
        }
    elseif (plat == "macosx") then
        return {
            type = "make",
            makefile = "Makefile.macosx",
            build_variables = {
                CFLAGS = "$(CFLAGS)",
                LIBFLAG = "$(LIBFLAG)",
                CFLAGS_EXTRA = "-DLUA_UUID_BUILD_SHARED -DLUA_UUID_USE_APPLE",
                LIBFLAG_EXTRA = "-framework CoreFoundation",
                LUA_INCDIR = "$(LUA_INCDIR)",
                LUA_LIBDIR = "$(LUA_INCDIR)/../lib",
                OBJ_EXTENSION = "$(OBJ_EXTENSION)",
                LIB_EXTENSION = "$(LIB_EXTENSION)"
            },
            install_variables = {
                INSTALL_PREFIX = "$(PREFIX)",
                INSTALL_LIBDIR = "$(LIBDIR)",
                LUA_VERSION = "$(LUA_VERSION)",
                LIB_EXTENSION = "$(LIB_EXTENSION)"
            }
        }
    else
        error("Unknown platform", 2)
    end
end

build = {
    platforms = {
        linux = make_plat("linux"),
        win32 = make_plat("win32"),
        mingw = make_plat("mingw"),
        cygwin = make_plat("cygwin"),
        macosx = make_plat("macosx")
    }
}
