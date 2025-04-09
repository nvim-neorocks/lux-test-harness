package = "lapis-exceptions"
version = "2.3.0-1"

source = {
  url = "git://github.com/leafo/lapis-exceptions.git",
	branch = "v2.3.0"
}

description = {
  summary = "Track Lapis exceptions to database and email when they happen",
  license = "MIT",
  maintainer = "Leaf Corcoran <leafot@gmail.com>",
}

dependencies = {
  "lua == 5.1",
  "lapis",
}

build = {
  type = "builtin",
  modules = {
    ["lapis.exceptions"] = "lapis/exceptions.lua",
    ["lapis.exceptions.email"] = "lapis/exceptions/email.lua",
    ["lapis.exceptions.flow"] = "lapis/exceptions/flow.lua",
    ["lapis.exceptions.helpers"] = "lapis/exceptions/helpers.lua",
    ["lapis.exceptions.migrations"] = "lapis/exceptions/migrations.lua",
    ["lapis.exceptions.model"] = "lapis/exceptions/model.lua",
    ["lapis.exceptions.models"] = "lapis/exceptions/models.lua",
    ["lapis.exceptions.models.exception_requests"] = "lapis/exceptions/models/exception_requests.lua",
    ["lapis.exceptions.models.exception_types"] = "lapis/exceptions/models/exception_types.lua",
    ["lapis.exceptions.remote_addr"] = "lapis/exceptions/remote_addr.lua",
    ["lapis.exceptions.schema"] = "lapis/exceptions/schema.lua",
    ["lapis.features.exception_tracking"] = "lapis/features/exception_tracking.lua",
  }
}

