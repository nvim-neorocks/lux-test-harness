package = "kong-plugin-ice-jaeger"
version = "0.0.2-1"

source = {
  url = "git+https://git@github.com/CodingForMoney/kong-plugin-zipkin.git",
  tag = "0.0.2",
}

description = {
  summary = "This plugin allows Kong to propagate Zipkin headers and report to a Zipkin and Jaeger server",
  homepage = "https://github.com/CodingForMoney/kong-plugin-zipkin",
  license = "Apache 2.0",
}

dependencies = {
  "lua >= 5.1",
  "lua-cjson",
  "lua-resty-http >= 0.11",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.ice-jaeger.handler"] = "kong/plugins/zipkin/handler.lua",
    ["kong.plugins.ice-jaeger.reporter"] = "kong/plugins/zipkin/reporter.lua",
    ["kong.plugins.ice-jaeger.span"] = "kong/plugins/zipkin/span.lua",
    ["kong.plugins.ice-jaeger.tracing_headers"] = "kong/plugins/zipkin/tracing_headers.lua",
    ["kong.plugins.ice-jaeger.schema"] = "kong/plugins/zipkin/schema.lua",
  },
}
