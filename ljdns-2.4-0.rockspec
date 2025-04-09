package = "ljdns"
version = "2.4-0"
source = {
   url = "git://github.com/vavrusa/ljdns"
}
description = {
   summary = "A contemporary DNS library focused on performance using LuaJIT FFI.",
   detailed = [[
	The goal of this project is a fast DNS library for testing new RFCs and building DNS services.
	It supports all widely used DNS records (DNSSEC included) with a lean and mean API, including DNS primitives,
	messages and non-blocking I/O (including coroutines, TCP Fast Open and SO_REUSEPORT), and DNS over TLS.
   ]],
   homepage = "https://github.com/vavrusa/ljdns",
   license = "BSD"
}
dependencies = {
   "lua >= 5.1",
   "ljsyscall >= 0.12",
   "lua-cjson >= 2.1.0",
}
external_dependencies = {
    LIBZSCANNER = {
       library = "zscanner"
    },
    LIBKNOT = {
       library = "knot"
    }
}
build = {
  type = "builtin",
  install = {
    bin = {
      zq = "tools/zq.lua",
      ldig = "tools/ldig.lua",
    }
  },
  modules = {
    ["dns.nbio"] = "dns/nbio.lua",
    ["dns.nbio.syscall"] = "dns/nbio/syscall.lua",
    ["dns.nbio.openresty"] = "dns/nbio/openresty.lua",
    ["dns.rrparser"] = "dns/rrparser.lua",
    ["dns.sift"] = "dns/sift.lua",
    ["dns.utils"] = "dns/utils.lua",
    ["dns.lmdb"] = "dns/lmdb.lua",
    ["dns.tls"] = "dns/tls.lua",
    ["dns.dnssec"] = "dns/dnssec.lua",
    dns = "dns.lua",
    kdns_clib = { "src/utils.c", "src/murmurhash3.c" },
  }
}
rockspec_format = "1.1"
deploy = { wrap_bin_scripts = false }
