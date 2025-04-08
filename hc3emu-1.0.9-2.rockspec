package = "hc3emu"
version = "1.0.9-2"
source = {
   url = "git://github.com/jangabrielsson/hc3emu",
   tag = "v1.0.9",
}
description = {
   summary = "hc3emu is a emulator for developing Fibaro HC3 QuickApps offline.",
   detailed = [[
      hc3emu is a emulator for developing Fibaro HC3 QuickApps offline.
      It's based on copas for asynchronous network calls.
      It can automatically deploy a "QA proxy" on the HC3 funneling 
      onAction and uiEvents back to the QA running in the emulator, thus
      allowing the QAs UI to be tested.
   ]],
   homepage = "https://github.com/jangabrielsson/hc3emu",
   license = "MIT/X11" 
}
dependencies = {
   "lua >= 5.3, <= 5.4",
   --"luasocket >= 2.0, <= 2.2",
   "copas >= 4.7.1-1",
   "luamqtt >= 3.4.3-1",
   --"rapidjson >= 0.7.1-1", -- if already installed, will be used
   "lua-json >= 1.0.0-1",
   "bit32 >= 5.3.5.1-1",
   "lua-websockets-bit32 >= 2.0.1-2",
   "mobdebug >= 0.80-1",
}
build = {
   type = "builtin",
   modules = {
      hc3emu = "src/hc3emu.lua", -- Proxy to load package or developer file
      ["hc3emu.emu"] = "lib/emu.lua", -- The main emulator
      ["hc3emu.LuWS"] = "lib/LuWS.lua",
      ["hc3emu.colors"] = "lib/colors.lua",
      ["hc3emu.fibaro"] = "lib/fibaro.lua",
      ["hc3emu.quickapp"] = "lib/quickapp.lua",
      ["hc3emu.class"] = "lib/class.lua",
      ["hc3emu.net"] = "lib/net.lua",
      ["hc3emu.proxy"] = "lib/proxy.lua",
      ["HC3EMU.ui"] = "lib/ui.lua",
      ["hc3emu.util"] = "lib/util.lua",
      ["hc3emu.offline"] = "lib/offline.lua",
      ["hc3emu.route"] = "lib/route.lua",
      ["hc3emu.stdStructs"] = "lib/stdStructs.lua",
  },
  copy_directories = { "doc", "rsrcs" }
}
