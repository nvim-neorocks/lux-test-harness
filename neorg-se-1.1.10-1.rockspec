local git_ref = 'v1.1.10'
local modrev = '1.1.10'
local specrev = '1'

local repo_url = 'https://github.com/benlubas/neorg-se'

rockspec_format = '3.0'
package = 'neorg-se'
version = modrev ..'-'.. specrev

description = {
    summary = 'a Search Engine for your Neorg notes',
    detailed = '',
    labels = { 'neorg-module', 'neovim', 'neovim-plugin' } ,
    homepage = 'https://github.com/benlubas/neorg-se',
    license = 'MIT'
}

dependencies = { 'neorg >= 8', 'telescope.nvim', 'lua ~> 5.1' } 

build_dependencies = {
  'luarocks-build-rust-mlua',
}

test_dependencies = { }

source = {
    url = repo_url .. '/archive/' .. git_ref .. '.zip',
    dir = 'neorg-se-' .. '1.1.10',
}

if modrev == 'scm' or modrev == 'dev' then
    source = {
        url = repo_url:gsub('https', 'git')
    }
end

build = {
    type = "rust-mlua",

    modules = {
        ["libneorg_se"] = "neorg_se",
    },

    install = {
        lua = {
            ["neorg_se.init"] = "lua/neorg_se/init.lua",
            ["neorg.modules.external.search.module"] = "lua/neorg/modules/external/search/module.lua",
        },
    },

    copy_directories = { },
}
