package = "dublang"
version = "0.4.0-0"
source = {
  url = "git+https://codeberg.org/joenio/dublang",
  tag = "0.4.0"
}
description = {
  summary = "dublang universal live coding system",
  homepage = "https://dublang.4two.art",
  license = "GPL_v3"
}
dependencies = {
  "lua = 5.1",
  "luv >= 1.36.0"
}
build = {
  type = "builtin",
  modules = { },
  copy_directories = { "artwork", "bin", "boot", "config", "handlers", "services" }
}
