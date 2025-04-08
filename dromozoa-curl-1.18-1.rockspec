rockspec_format = "3.0"
package = "dromozoa-curl"
version = "1.18-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-curl/archive/v1.18.tar.gz";
  file = "dromozoa-curl-1.18.tar.gz";
}
description = {
  summary = "Lua bindings for libcurl";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-curl/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
test = {
  type = "command";
  command = "./test.sh";
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
