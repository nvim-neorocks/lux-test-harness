package = "Faketorio"
version = "0.1.3-1"
source = {
   url = "git://github.com/JonasJurczok/Faketorio",
   tag = "0.1.3",
   branch = "master"
}
description = {
   summary = "Support library for Factorio mod unit testing.",
   detailed = [[
      One problem in modding is the extensive test cycles.
      With every new feature or bug a new test is added. Testing becomes more and more time consuming.

      This library provides helper methods to create automated tests for Factorio mods. 
      With this you can speed up development and reduce the amount of time you spend searching 
      for bugs you fixed long ago.
   ]],
   homepage = "http://github.com/JonasJurczok/Faketorio",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      faketorio = "src/faketorio.lua",
   }
}
