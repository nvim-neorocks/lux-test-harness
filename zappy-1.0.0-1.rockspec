package = 'zappy'
version = '1.0.0-1'
source = {
    url = 'https://gitlab.com/byarocks/zappy/-/archive/v1.0.0/zappy-v1.0.0.tar.gz',
    dir = 'zappy-v1.0.0'
}

description = {
    summary = 'An electrifying project template generator',
    detailed = [[
        A command-line tool written in Lua to generate generate scaffolding
        for projects from pre-defined templates and create/manage custom project templates.
    ]],
    homepage = 'https://gitlab.com/byarocks/zappy.git',
    license = 'MIT'
}

dependencies = {
    'lua >= 5.1',
    'luafilesystem >= 1.7.0',
    'argparse >= 0.7.1'
}

build = {
    type = 'builtin',
    modules = {
        ['zappy'] = 'lua/zappy/init.lua',
    },
    install = {
        bin = {
            ['zappy'] = 'bin/zappy',
        }
    }
}

