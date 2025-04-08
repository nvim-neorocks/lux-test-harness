package = "lapis"
version = "1.11.0-1"

source = {
	url = "git+https://github.com/leafo/lapis.git",
	branch = "v1.11.0"
}

description = {
	summary = "A web framework for MoonScript & Lua",
	homepage = "http://leafo.net/lapis",
	maintainer = "Leaf Corcoran <leafot@gmail.com>",
	license = "MIT"
}

dependencies = {
	"lua",

	"ansicolors",
	"date",
	"etlua",
	"loadkit",
	"lpeg",
	"lua-cjson",
	"luaossl",
	"luafilesystem",
	"luasocket",
	"pgmoon",
}

build = {
	type = "builtin",
	modules = {
		["lapis"] = "lapis/init.lua",
		["lapis.application"] = "lapis/application.lua",
		["lapis.application.route_group"] = "lapis/application/route_group.lua",
		["lapis.cache"] = "lapis/cache.lua",
		["lapis.cmd.actions"] = "lapis/cmd/actions.lua",
		["lapis.cmd.attached_server"] = "lapis/cmd/attached_server.lua",
		["lapis.cmd.cqueues"] = "lapis/cmd/cqueues.lua",
		["lapis.cmd.cqueues.actions"] = "lapis/cmd/cqueues/actions.lua",
		["lapis.cmd.cqueues.attached_server"] = "lapis/cmd/cqueues/attached_server.lua",
		["lapis.cmd.cqueues.templates.config"] = "lapis/cmd/cqueues/templates/config.lua",
		["lapis.cmd.nginx"] = "lapis/cmd/nginx.lua",
		["lapis.cmd.nginx.actions"] = "lapis/cmd/nginx/actions.lua",
		["lapis.cmd.nginx.attached_server"] = "lapis/cmd/nginx/attached_server.lua",
		["lapis.cmd.nginx.config"] = "lapis/cmd/nginx/config.lua",
		["lapis.cmd.nginx.templates.config"] = "lapis/cmd/nginx/templates/config.lua",
		["lapis.cmd.nginx.templates.config_etlua"] = "lapis/cmd/nginx/templates/config_etlua.lua",
		["lapis.cmd.nginx.templates.mime_types"] = "lapis/cmd/nginx/templates/mime_types.lua",
		["lapis.cmd.path"] = "lapis/cmd/path.lua",
		["lapis.cmd.templates.app"] = "lapis/cmd/templates/app.lua",
		["lapis.cmd.templates.app_lua"] = "lapis/cmd/templates/app_lua.lua",
		["lapis.cmd.templates.flow"] = "lapis/cmd/templates/flow.lua",
		["lapis.cmd.templates.gitignore"] = "lapis/cmd/templates/gitignore.lua",
		["lapis.cmd.templates.model"] = "lapis/cmd/templates/model.lua",
		["lapis.cmd.templates.models"] = "lapis/cmd/templates/models.lua",
		["lapis.cmd.templates.models_lua"] = "lapis/cmd/templates/models_lua.lua",
		["lapis.cmd.templates.spec"] = "lapis/cmd/templates/spec.lua",
		["lapis.cmd.templates.tup"] = "lapis/cmd/templates/tup.lua",
		["lapis.cmd.util"] = "lapis/cmd/util.lua",
		["lapis.config"] = "lapis/config.lua",
		["lapis.cqueues"] = "lapis/cqueues.lua",
		["lapis.csrf"] = "lapis/csrf.lua",
		["lapis.db"] = "lapis/db.lua",
		["lapis.db.base"] = "lapis/db/base.lua",
		["lapis.db.base_model"] = "lapis/db/base_model.lua",
		["lapis.db.migrations"] = "lapis/db/migrations.lua",
		["lapis.db.model"] = "lapis/db/model.lua",
		["lapis.db.model.relations"] = "lapis/db/model/relations.lua",
		["lapis.db.mysql"] = "lapis/db/mysql.lua",
		["lapis.db.mysql.model"] = "lapis/db/mysql/model.lua",
		["lapis.db.mysql.schema"] = "lapis/db/mysql/schema.lua",
		["lapis.db.pagination"] = "lapis/db/pagination.lua",
		["lapis.db.postgres"] = "lapis/db/postgres.lua",
		["lapis.db.postgres.model"] = "lapis/db/postgres/model.lua",
		["lapis.db.postgres.parse_clause"] = "lapis/db/postgres/parse_clause.lua",
		["lapis.db.postgres.schema"] = "lapis/db/postgres/schema.lua",
		["lapis.db.schema"] = "lapis/db/schema.lua",
		["lapis.environment"] = "lapis/environment.lua",
		["lapis.etlua"] = "lapis/etlua.lua",
		["lapis.features.etlua"] = "lapis/features/etlua.lua",
		["lapis.flow"] = "lapis/flow.lua",
		["lapis.html"] = "lapis/html.lua",
		["lapis.http"] = "lapis/http.lua",
		["lapis.logging"] = "lapis/logging.lua",
		["lapis.lua"] = "lapis/lua.lua",
		["lapis.moonscript.widget_optimizer"] = "lapis/moonscript/widget_optimizer.lua",
		["lapis.nginx"] = "lapis/nginx.lua",
		["lapis.nginx.cache"] = "lapis/nginx/cache.lua",
		["lapis.nginx.context"] = "lapis/nginx/context.lua",
		["lapis.nginx.http"] = "lapis/nginx/http.lua",
		["lapis.nginx.postgres"] = "lapis/nginx/postgres.lua",
		["lapis.request"] = "lapis/request.lua",
		["lapis.router"] = "lapis/router.lua",
		["lapis.server"] = "lapis/server.lua",
		["lapis.session"] = "lapis/session.lua",
		["lapis.spec"] = "lapis/spec.lua",
		["lapis.spec.db"] = "lapis/spec/db.lua",
		["lapis.spec.request"] = "lapis/spec/request.lua",
		["lapis.spec.server"] = "lapis/spec/server.lua",
		["lapis.spec.shared"] = "lapis/spec/shared.lua",
		["lapis.spec.stack"] = "lapis/spec/stack.lua",
		["lapis.time"] = "lapis/time.lua",
		["lapis.util"] = "lapis/util.lua",
		["lapis.util.encoding"] = "lapis/util/encoding.lua",
		["lapis.util.fenv"] = "lapis/util/fenv.lua",
		["lapis.util.functions"] = "lapis/util/functions.lua",
		["lapis.util.utf8"] = "lapis/util/utf8.lua",
		["lapis.validate"] = "lapis/validate.lua",
		["lapis.version"] = "lapis/version.lua",
		["lapis.views.error"] = "lapis/views/error.lua",
		["lapis.views.layout"] = "lapis/views/layout.lua",
	},
	install = {
		bin = { "bin/lapis" }
	},
}

