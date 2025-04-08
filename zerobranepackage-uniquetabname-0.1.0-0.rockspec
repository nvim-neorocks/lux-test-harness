package = "ZeroBranePackage-uniquetabname"
version = "0.1.0-0"
source = {
 url = "git://github.com/pkulchenko/ZeroBranePackage.git",
 branch = "master"
}
description = {
 summary = "uniquetabname is a ZeroBraneStudio Package mirrored from the official repository",
 detailed = [[uniquetabname is a ZeroBraneStudio Package mirrored from the official repository.]],
 homepage = "https://github.com/pkulchenko/ZeroBranePackage",
 license = "MIT"
}
dependencies = {
  "lua == 5.1"
}
build = {
 type = "builtin",
 modules = {
  ["uniquetabname"] = "uniquetabname.lua",
 }
}
