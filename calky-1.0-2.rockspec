rockspec_format = "3.0"
package = "calky"  
version = "1.0-2"   

source = {
  url = "https://github.com/BuffGenji/Calky/archive/refs/heads/main.zip",
  dir = "Calky-main"
}

description = {
  summary = "A lua library that helps making small calculations while following along in class",
  detailed = [[
    This was created for the purpose of making looking back at your work much simpler. 
    You can make values with units, and invent your own units if they do not exist or add them yourself to the constants.lua
    and you can add more functions to the value function in the create table for more specific needs
  ]],
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin", 
  modules = {
    ["calky"] = "src/calky.lua"
  }
}
