package = "dromozoa-jpeg"
version = "1.4-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-jpeg/archive/v1.4.tar.gz";
  file = "dromozoa-jpeg-1.4.tar.gz";
}
description = {
  summary = "Lua bindings for libjpeg";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-jpeg/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
build = {
  type = "make";
  build_variables = {
    CFLAGS = "$(CFLAGS)";
    LIBFLAG = "$(LIBFLAG)";
    LUA_INCDIR = "$(LUA_INCDIR)";
  };
  install_variables = {
    LIBDIR = "$(LIBDIR)";
  };
}
