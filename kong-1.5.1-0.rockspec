package = "kong"
version = "1.5.1-0"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/Kong/kong",
  tag = "1.5.1"
}
description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "https://konghq.com",
  license = "Apache 2.0"
}
dependencies = {
  "inspect == 3.1.1",
  "luasec == 0.8",
  "luasocket == 3.0-rc1",
  "penlight == 1.5.4",
  "lua-resty-http == 0.15",
  "lua-resty-jit-uuid == 0.0.7",
  "multipart == 0.5.5",
  "version == 1.0.1",
  "kong-lapis == 1.7.0.1",
  "lua-cassandra == 1.5.0",
  "pgmoon == 1.10.0",
  "luatz == 0.4",
  "http == 0.3",
  "lua_system_constants == 0.1.3",
  "lyaml == 6.2.4",
  "lua-resty-iputils == 0.3.0",
  "luaossl == 20190731",
  "luasyslog == 1.0.0",
  "lua_pack == 1.0.5",
  "lua-resty-dns-client == 4.1.2",
  "lua-resty-worker-events == 1.0.0",
  "lua-resty-mediador == 0.1.2",
  "lua-resty-healthcheck == 1.1.2",
  "lua-resty-cookie == 0.1.0",
  "lua-resty-mlcache == 2.4.1",
  "lua-resty-counter == 0.2.0",
  -- external Kong plugins
  "kong-plugin-azure-functions ~> 0.4",
  "kong-plugin-kubernetes-sidecar-injector ~> 0.2",
  "kong-plugin-zipkin ~> 0.1",
  "kong-plugin-serverless-functions ~> 0.3",
  "kong-prometheus-plugin ~> 0.6",
  "kong-proxy-cache-plugin ~> 1.2",
  "kong-plugin-request-transformer ~> 1.2",
  "kong-plugin-session ~> 2.1",
}
build = {
  type = "builtin",
  modules = {
    ["kong"] = "kong/init.lua",
    ["kong.meta"] = "kong/meta.lua",
    ["kong.cache"] = "kong/cache.lua",
    ["kong.global"] = "kong/global.lua",
    ["kong.router"] = "kong/router.lua",
    ["kong.reports"] = "kong/reports.lua",
    ["kong.constants"] = "kong/constants.lua",
    ["kong.singletons"] = "kong/singletons.lua",
    ["kong.concurrency"] = "kong/concurrency.lua",
    ["kong.conf_loader"] = "kong/conf_loader.lua",
    ["kong.cache_warmup"] = "kong/cache_warmup.lua",
    ["kong.globalpatches"] = "kong/globalpatches.lua",
    ["kong.error_handlers"] = "kong/error_handlers.lua",

    ["kong.cluster_events"] = "kong/cluster_events/init.lua",
    ["kong.cluster_events.strategies.cassandra"] = "kong/cluster_events/strategies/cassandra.lua",
    ["kong.cluster_events.strategies.postgres"] = "kong/cluster_events/strategies/postgres.lua",
    ["kong.cluster_events.strategies.off"] = "kong/cluster_events/strategies/off.lua",

    ["kong.templates.nginx"] = "kong/templates/nginx.lua",
    ["kong.templates.nginx_kong"] = "kong/templates/nginx_kong.lua",
    ["kong.templates.nginx_kong_stream"] = "kong/templates/nginx_kong_stream.lua",
    ["kong.templates.kong_defaults"] = "kong/templates/kong_defaults.lua",
    ["kong.templates.kong_yml"] = "kong/templates/kong_yml.lua",

    ["kong.resty.ctx"] = "kong/resty/ctx.lua",
    ["kong.resty.config"] = "kong/resty/config.lua",
    ["kong.resty.getssl"] = "kong/resty/getssl.lua",
    ["kong.vendor.classic"] = "kong/vendor/classic.lua",

    ["kong.cmd"] = "kong/cmd/init.lua",
    ["kong.cmd.roar"] = "kong/cmd/roar.lua",
    ["kong.cmd.stop"] = "kong/cmd/stop.lua",
    ["kong.cmd.quit"] = "kong/cmd/quit.lua",
    ["kong.cmd.start"] = "kong/cmd/start.lua",
    ["kong.cmd.check"] = "kong/cmd/check.lua",
    ["kong.cmd.config"] = "kong/cmd/config.lua",
    ["kong.cmd.reload"] = "kong/cmd/reload.lua",
    ["kong.cmd.restart"] = "kong/cmd/restart.lua",
    ["kong.cmd.prepare"] = "kong/cmd/prepare.lua",
    ["kong.cmd.migrations"] = "kong/cmd/migrations.lua",
    ["kong.cmd.health"] = "kong/cmd/health.lua",
    ["kong.cmd.version"] = "kong/cmd/version.lua",
    ["kong.cmd.utils.log"] = "kong/cmd/utils/log.lua",
    ["kong.cmd.utils.kill"] = "kong/cmd/utils/kill.lua",
    ["kong.cmd.utils.env"] = "kong/cmd/utils/env.lua",
    ["kong.cmd.utils.migrations"] = "kong/cmd/utils/migrations.lua",
    ["kong.cmd.utils.tty"] = "kong/cmd/utils/tty.lua",
    ["kong.cmd.utils.nginx_signals"] = "kong/cmd/utils/nginx_signals.lua",
    ["kong.cmd.utils.prefix_handler"] = "kong/cmd/utils/prefix_handler.lua",

    ["kong.api"] = "kong/api/init.lua",
    ["kong.api.api_helpers"] = "kong/api/api_helpers.lua",
    ["kong.api.arguments"] = "kong/api/arguments.lua",
    ["kong.api.endpoints"] = "kong/api/endpoints.lua",
    ["kong.api.routes.kong"] = "kong/api/routes/kong.lua",
    ["kong.api.routes.health"] = "kong/api/routes/health.lua",
    ["kong.api.routes.config"] = "kong/api/routes/config.lua",
    ["kong.api.routes.consumers"] = "kong/api/routes/consumers.lua",
    ["kong.api.routes.plugins"] = "kong/api/routes/plugins.lua",
    ["kong.api.routes.routes"] = "kong/api/routes/routes.lua",
    ["kong.api.routes.services"] = "kong/api/routes/services.lua",
    ["kong.api.routes.cache"] = "kong/api/routes/cache.lua",
    ["kong.api.routes.upstreams"] = "kong/api/routes/upstreams.lua",
    ["kong.api.routes.targets"] = "kong/api/routes/targets.lua",
    ["kong.api.routes.certificates"] = "kong/api/routes/certificates.lua",
    ["kong.api.routes.snis"] = "kong/api/routes/snis.lua",
    ["kong.api.routes.tags"] = "kong/api/routes/tags.lua",

    ["kong.status"] = "kong/status/init.lua",

    ["kong.tools.cluster_ca"] = "kong/tools/cluster_ca.lua",
    ["kong.tools.dns"] = "kong/tools/dns.lua",
    ["kong.tools.utils"] = "kong/tools/utils.lua",
    ["kong.tools.printable"] = "kong/tools/printable.lua",
    ["kong.tools.timestamp"] = "kong/tools/timestamp.lua",
    ["kong.tools.batch_queue"] = "kong/tools/batch_queue.lua",

    ["kong.runloop.handler"] = "kong/runloop/handler.lua",
    ["kong.runloop.certificate"] = "kong/runloop/certificate.lua",
    ["kong.runloop.mesh"] = "kong/runloop/mesh.lua",
    ["kong.runloop.plugins_iterator"] = "kong/runloop/plugins_iterator.lua",
    ["kong.runloop.balancer"] = "kong/runloop/balancer.lua",

    ["kong.db"] = "kong/db/init.lua",
    ["kong.db.errors"] = "kong/db/errors.lua",
    ["kong.db.iteration"] = "kong/db/iteration.lua",
    ["kong.db.dao"] = "kong/db/dao/init.lua",
    ["kong.db.dao.certificates"] = "kong/db/dao/certificates.lua",
    ["kong.db.dao.snis"] = "kong/db/dao/snis.lua",
    ["kong.db.dao.targets"] = "kong/db/dao/targets.lua",
    ["kong.db.dao.plugins"] = "kong/db/dao/plugins.lua",
    ["kong.db.dao.tags"] = "kong/db/dao/tags.lua",
    ["kong.db.declarative"] = "kong/db/declarative/init.lua",
    ["kong.db.schema"] = "kong/db/schema/init.lua",
    ["kong.db.schema.entities.cluster_ca"] = "kong/db/schema/entities/cluster_ca.lua",
    ["kong.db.schema.entities.consumers"] = "kong/db/schema/entities/consumers.lua",
    ["kong.db.schema.entities.routes"] = "kong/db/schema/entities/routes.lua",
    ["kong.db.schema.entities.routes_subschemas"] = "kong/db/schema/entities/routes_subschemas.lua",
    ["kong.db.schema.entities.services"] = "kong/db/schema/entities/services.lua",
    ["kong.db.schema.entities.certificates"] = "kong/db/schema/entities/certificates.lua",
    ["kong.db.schema.entities.snis"] = "kong/db/schema/entities/snis.lua",
    ["kong.db.schema.entities.upstreams"] = "kong/db/schema/entities/upstreams.lua",
    ["kong.db.schema.entities.targets"] = "kong/db/schema/entities/targets.lua",
    ["kong.db.schema.entities.plugins"] = "kong/db/schema/entities/plugins.lua",
    ["kong.db.schema.entities.tags"] = "kong/db/schema/entities/tags.lua",
    ["kong.db.schema.entities.ca_certificates"] = "kong/db/schema/entities/ca_certificates.lua",
    ["kong.db.schema.others.migrations"] = "kong/db/schema/others/migrations.lua",
    ["kong.db.schema.others.declarative_config"] = "kong/db/schema/others/declarative_config.lua",
    ["kong.db.schema.entity"] = "kong/db/schema/entity.lua",
    ["kong.db.schema.metaschema"] = "kong/db/schema/metaschema.lua",
    ["kong.db.schema.typedefs"] = "kong/db/schema/typedefs.lua",
    ["kong.db.schema.plugin_loader"] = "kong/db/schema/plugin_loader.lua",
    ["kong.db.schema.topological_sort"] = "kong/db/schema/topological_sort.lua",
    ["kong.db.strategies"] = "kong/db/strategies/init.lua",
    ["kong.db.strategies.connector"] = "kong/db/strategies/connector.lua",
    ["kong.db.strategies.cassandra"] = "kong/db/strategies/cassandra/init.lua",
    ["kong.db.strategies.cassandra.connector"] = "kong/db/strategies/cassandra/connector.lua",
    ["kong.db.strategies.cassandra.plugins"] = "kong/db/strategies/cassandra/plugins.lua",
    ["kong.db.strategies.cassandra.tags"] = "kong/db/strategies/cassandra/tags.lua",
    ["kong.db.strategies.postgres"] = "kong/db/strategies/postgres/init.lua",
    ["kong.db.strategies.postgres.plugins"] = "kong/db/strategies/postgres/plugins.lua",
    ["kong.db.strategies.postgres.connector"] = "kong/db/strategies/postgres/connector.lua",
    ["kong.db.strategies.postgres.tags"] = "kong/db/strategies/postgres/tags.lua",
    ["kong.db.strategies.off"] = "kong/db/strategies/off/init.lua",
    ["kong.db.strategies.off.connector"] = "kong/db/strategies/off/connector.lua",
    ["kong.db.strategies.off.tags"] = "kong/db/strategies/off/tags.lua",

    ["kong.db.migrations.state"] = "kong/db/migrations/state.lua",
    ["kong.db.migrations.helpers"] = "kong/db/migrations/helpers.lua",
    ["kong.db.migrations.core"] = "kong/db/migrations/core/init.lua",
    ["kong.db.migrations.core.000_base"] = "kong/db/migrations/core/000_base.lua",
    ["kong.db.migrations.core.001_14_to_15"] = "kong/db/migrations/core/001_14_to_15.lua",
    ["kong.db.migrations.core.002_15_to_1"] = "kong/db/migrations/core/002_15_to_1.lua",
    ["kong.db.migrations.core.003_100_to_110"] = "kong/db/migrations/core/003_100_to_110.lua",
    ["kong.db.migrations.core.004_110_to_120"] = "kong/db/migrations/core/004_110_to_120.lua",
    ["kong.db.migrations.core.005_120_to_130"] = "kong/db/migrations/core/005_120_to_130.lua",
    ["kong.db.migrations.core.006_130_to_140"] = "kong/db/migrations/core/006_130_to_140.lua",
    ["kong.db.migrations.core.007_140_to_150"] = "kong/db/migrations/core/007_140_to_150.lua",

    ["kong.pdk"] = "kong/pdk/init.lua",
    ["kong.pdk.private.checks"] = "kong/pdk/private/checks.lua",
    ["kong.pdk.private.phases"] = "kong/pdk/private/phases.lua",
    ["kong.pdk.client"] = "kong/pdk/client.lua",
    ["kong.pdk.ctx"] = "kong/pdk/ctx.lua",
    ["kong.pdk.ip"] = "kong/pdk/ip.lua",
    ["kong.pdk.log"] = "kong/pdk/log.lua",
    ["kong.pdk.service"] = "kong/pdk/service.lua",
    ["kong.pdk.service.request"] = "kong/pdk/service/request.lua",
    ["kong.pdk.service.response"] = "kong/pdk/service/response.lua",
    ["kong.pdk.router"] = "kong/pdk/router.lua",
    ["kong.pdk.request"] = "kong/pdk/request.lua",
    ["kong.pdk.response"] = "kong/pdk/response.lua",
    ["kong.pdk.table"] = "kong/pdk/table.lua",
    ["kong.pdk.node"] = "kong/pdk/node.lua",
    ["kong.pdk.nginx"] = "kong/pdk/nginx.lua",

    ["kong.plugins.base_plugin"] = "kong/plugins/base_plugin.lua",

    ["kong.plugins.basic-auth.migrations"] = "kong/plugins/basic-auth/migrations/init.lua",
    ["kong.plugins.basic-auth.migrations.000_base_basic_auth"] = "kong/plugins/basic-auth/migrations/000_base_basic_auth.lua",
    ["kong.plugins.basic-auth.migrations.001_14_to_15"] = "kong/plugins/basic-auth/migrations/001_14_to_15.lua",
    ["kong.plugins.basic-auth.migrations.002_130_to_140"] = "kong/plugins/basic-auth/migrations/002_130_to_140.lua",
    ["kong.plugins.basic-auth.crypto"] = "kong/plugins/basic-auth/crypto.lua",
    ["kong.plugins.basic-auth.handler"] = "kong/plugins/basic-auth/handler.lua",
    ["kong.plugins.basic-auth.access"] = "kong/plugins/basic-auth/access.lua",
    ["kong.plugins.basic-auth.schema"] = "kong/plugins/basic-auth/schema.lua",
    ["kong.plugins.basic-auth.daos"] = "kong/plugins/basic-auth/daos.lua",

    ["kong.plugins.key-auth.migrations"] = "kong/plugins/key-auth/migrations/init.lua",
    ["kong.plugins.key-auth.migrations.000_base_key_auth"] = "kong/plugins/key-auth/migrations/000_base_key_auth.lua",
    ["kong.plugins.key-auth.migrations.001_14_to_15"] = "kong/plugins/key-auth/migrations/001_14_to_15.lua",
    ["kong.plugins.key-auth.migrations.002_130_to_140"] = "kong/plugins/key-auth/migrations/002_130_to_140.lua",
    ["kong.plugins.key-auth.handler"] = "kong/plugins/key-auth/handler.lua",
    ["kong.plugins.key-auth.schema"] = "kong/plugins/key-auth/schema.lua",
    ["kong.plugins.key-auth.daos"] = "kong/plugins/key-auth/daos.lua",

    ["kong.plugins.oauth2.migrations"] = "kong/plugins/oauth2/migrations/init.lua",
    ["kong.plugins.oauth2.migrations.000_base_oauth2"] = "kong/plugins/oauth2/migrations/000_base_oauth2.lua",
    ["kong.plugins.oauth2.migrations.001_14_to_15"] = "kong/plugins/oauth2/migrations/001_14_to_15.lua",
    ["kong.plugins.oauth2.migrations.002_15_to_10"] = "kong/plugins/oauth2/migrations/002_15_to_10.lua",
    ["kong.plugins.oauth2.migrations.003_130_to_140"] = "kong/plugins/oauth2/migrations/003_130_to_140.lua",
    ["kong.plugins.oauth2.handler"] = "kong/plugins/oauth2/handler.lua",
    ["kong.plugins.oauth2.access"] = "kong/plugins/oauth2/access.lua",
    ["kong.plugins.oauth2.schema"] = "kong/plugins/oauth2/schema.lua",
    ["kong.plugins.oauth2.daos"] = "kong/plugins/oauth2/daos.lua",


    ["kong.plugins.log-serializers.basic"] = "kong/plugins/log-serializers/basic.lua",

    ["kong.plugins.tcp-log.handler"] = "kong/plugins/tcp-log/handler.lua",
    ["kong.plugins.tcp-log.schema"] = "kong/plugins/tcp-log/schema.lua",

    ["kong.plugins.udp-log.handler"] = "kong/plugins/udp-log/handler.lua",
    ["kong.plugins.udp-log.schema"] = "kong/plugins/udp-log/schema.lua",

    ["kong.plugins.http-log.handler"] = "kong/plugins/http-log/handler.lua",
    ["kong.plugins.http-log.schema"] = "kong/plugins/http-log/schema.lua",

    ["kong.plugins.file-log.handler"] = "kong/plugins/file-log/handler.lua",
    ["kong.plugins.file-log.schema"] = "kong/plugins/file-log/schema.lua",

    ["kong.plugins.rate-limiting.migrations"] = "kong/plugins/rate-limiting/migrations/init.lua",
    ["kong.plugins.rate-limiting.migrations.000_base_rate_limiting"] = "kong/plugins/rate-limiting/migrations/000_base_rate_limiting.lua",
    ["kong.plugins.rate-limiting.migrations.001_14_to_15"] = "kong/plugins/rate-limiting/migrations/001_14_to_15.lua",
    ["kong.plugins.rate-limiting.migrations.002_15_to_10"] = "kong/plugins/rate-limiting/migrations/002_15_to_10.lua",
    ["kong.plugins.rate-limiting.migrations.003_10_to_112"] = "kong/plugins/rate-limiting/migrations/003_10_to_112.lua",
    ["kong.plugins.rate-limiting.handler"] = "kong/plugins/rate-limiting/handler.lua",
    ["kong.plugins.rate-limiting.schema"] = "kong/plugins/rate-limiting/schema.lua",
    ["kong.plugins.rate-limiting.daos"] = "kong/plugins/rate-limiting/daos.lua",
    ["kong.plugins.rate-limiting.policies"] = "kong/plugins/rate-limiting/policies/init.lua",
    ["kong.plugins.rate-limiting.policies.cluster"] = "kong/plugins/rate-limiting/policies/cluster.lua",

    ["kong.plugins.response-ratelimiting.migrations"] = "kong/plugins/response-ratelimiting/migrations/init.lua",
    ["kong.plugins.response-ratelimiting.migrations.000_base_response_rate_limiting"] = "kong/plugins/response-ratelimiting/migrations/000_base_response_rate_limiting.lua",
    ["kong.plugins.response-ratelimiting.migrations.001_14_to_15"] = "kong/plugins/response-ratelimiting/migrations/001_14_to_15.lua",
    ["kong.plugins.response-ratelimiting.migrations.002_15_to_10"] = "kong/plugins/response-ratelimiting/migrations/002_15_to_10.lua",
    ["kong.plugins.response-ratelimiting.handler"] = "kong/plugins/response-ratelimiting/handler.lua",
    ["kong.plugins.response-ratelimiting.access"] = "kong/plugins/response-ratelimiting/access.lua",
    ["kong.plugins.response-ratelimiting.header_filter"] = "kong/plugins/response-ratelimiting/header_filter.lua",
    ["kong.plugins.response-ratelimiting.log"] = "kong/plugins/response-ratelimiting/log.lua",
    ["kong.plugins.response-ratelimiting.schema"] = "kong/plugins/response-ratelimiting/schema.lua",
    ["kong.plugins.response-ratelimiting.daos"] = "kong/plugins/response-ratelimiting/daos.lua",
    ["kong.plugins.response-ratelimiting.policies"] = "kong/plugins/response-ratelimiting/policies/init.lua",
    ["kong.plugins.response-ratelimiting.policies.cluster"] = "kong/plugins/response-ratelimiting/policies/cluster.lua",

    ["kong.plugins.request-size-limiting.handler"] = "kong/plugins/request-size-limiting/handler.lua",
    ["kong.plugins.request-size-limiting.schema"] = "kong/plugins/request-size-limiting/schema.lua",

    ["kong.plugins.response-transformer.handler"] = "kong/plugins/response-transformer/handler.lua",
    ["kong.plugins.response-transformer.body_transformer"] = "kong/plugins/response-transformer/body_transformer.lua",
    ["kong.plugins.response-transformer.header_transformer"] = "kong/plugins/response-transformer/header_transformer.lua",
    ["kong.plugins.response-transformer.schema"] = "kong/plugins/response-transformer/schema.lua",

    ["kong.plugins.cors.handler"] = "kong/plugins/cors/handler.lua",
    ["kong.plugins.cors.schema"] = "kong/plugins/cors/schema.lua",

    ["kong.plugins.ip-restriction.handler"] = "kong/plugins/ip-restriction/handler.lua",
    ["kong.plugins.ip-restriction.schema"] = "kong/plugins/ip-restriction/schema.lua",

    ["kong.plugins.acl.migrations"] = "kong/plugins/acl/migrations/init.lua",
    ["kong.plugins.acl.migrations.000_base_acl"] = "kong/plugins/acl/migrations/000_base_acl.lua",
    ["kong.plugins.acl.migrations.001_14_to_15"] = "kong/plugins/acl/migrations/001_14_to_15.lua",
    ["kong.plugins.acl.migrations.002_130_to_140"] = "kong/plugins/acl/migrations/002_130_to_140.lua",
    ["kong.plugins.acl.handler"] = "kong/plugins/acl/handler.lua",
    ["kong.plugins.acl.schema"] = "kong/plugins/acl/schema.lua",
    ["kong.plugins.acl.daos"] = "kong/plugins/acl/daos.lua",
    ["kong.plugins.acl.groups"] = "kong/plugins/acl/groups.lua",
    ["kong.plugins.acl.acls"] = "kong/plugins/acl/acls.lua",
    ["kong.plugins.acl.api"] = "kong/plugins/acl/api.lua",

    ["kong.plugins.correlation-id.handler"] = "kong/plugins/correlation-id/handler.lua",
    ["kong.plugins.correlation-id.schema"] = "kong/plugins/correlation-id/schema.lua",

    ["kong.plugins.jwt.migrations"] = "kong/plugins/jwt/migrations/init.lua",
    ["kong.plugins.jwt.migrations.000_base_jwt"] = "kong/plugins/jwt/migrations/000_base_jwt.lua",
    ["kong.plugins.jwt.migrations.001_14_to_15"] = "kong/plugins/jwt/migrations/001_14_to_15.lua",
    ["kong.plugins.jwt.migrations.002_130_to_140"] = "kong/plugins/jwt/migrations/002_130_to_140.lua",
    ["kong.plugins.jwt.handler"] = "kong/plugins/jwt/handler.lua",
    ["kong.plugins.jwt.schema"] = "kong/plugins/jwt/schema.lua",
    ["kong.plugins.jwt.daos"] = "kong/plugins/jwt/daos.lua",
    ["kong.plugins.jwt.jwt_parser"] = "kong/plugins/jwt/jwt_parser.lua",
    ["kong.plugins.jwt.asn_sequence"] = "kong/plugins/jwt/asn_sequence.lua",

    ["kong.plugins.hmac-auth.migrations"] = "kong/plugins/hmac-auth/migrations/init.lua",
    ["kong.plugins.hmac-auth.migrations.000_base_hmac_auth"] = "kong/plugins/hmac-auth/migrations/000_base_hmac_auth.lua",
    ["kong.plugins.hmac-auth.migrations.001_14_to_15"] = "kong/plugins/hmac-auth/migrations/001_14_to_15.lua",
    ["kong.plugins.hmac-auth.migrations.002_130_to_140"] = "kong/plugins/hmac-auth/migrations/002_130_to_140.lua",
    ["kong.plugins.hmac-auth.handler"] = "kong/plugins/hmac-auth/handler.lua",
    ["kong.plugins.hmac-auth.access"] = "kong/plugins/hmac-auth/access.lua",
    ["kong.plugins.hmac-auth.schema"] = "kong/plugins/hmac-auth/schema.lua",
    ["kong.plugins.hmac-auth.daos"] = "kong/plugins/hmac-auth/daos.lua",

    ["kong.plugins.ldap-auth.handler"] = "kong/plugins/ldap-auth/handler.lua",
    ["kong.plugins.ldap-auth.access"] = "kong/plugins/ldap-auth/access.lua",
    ["kong.plugins.ldap-auth.schema"] = "kong/plugins/ldap-auth/schema.lua",
    ["kong.plugins.ldap-auth.ldap"] = "kong/plugins/ldap-auth/ldap.lua",
    ["kong.plugins.ldap-auth.asn1"] = "kong/plugins/ldap-auth/asn1.lua",

    ["kong.plugins.syslog.handler"] = "kong/plugins/syslog/handler.lua",
    ["kong.plugins.syslog.schema"] = "kong/plugins/syslog/schema.lua",

    ["kong.plugins.loggly.handler"] = "kong/plugins/loggly/handler.lua",
    ["kong.plugins.loggly.schema"] = "kong/plugins/loggly/schema.lua",

    ["kong.plugins.datadog.handler"] = "kong/plugins/datadog/handler.lua",
    ["kong.plugins.datadog.schema"] = "kong/plugins/datadog/schema.lua",
    ["kong.plugins.datadog.statsd_logger"] = "kong/plugins/datadog/statsd_logger.lua",

    ["kong.plugins.statsd.handler"] = "kong/plugins/statsd/handler.lua",
    ["kong.plugins.statsd.schema"] = "kong/plugins/statsd/schema.lua",
    ["kong.plugins.statsd.statsd_logger"] = "kong/plugins/statsd/statsd_logger.lua",

    ["kong.plugins.bot-detection.handler"] = "kong/plugins/bot-detection/handler.lua",
    ["kong.plugins.bot-detection.schema"] = "kong/plugins/bot-detection/schema.lua",
    ["kong.plugins.bot-detection.rules"] = "kong/plugins/bot-detection/rules.lua",

    ["kong.plugins.aws-lambda.handler"] = "kong/plugins/aws-lambda/handler.lua",
    ["kong.plugins.aws-lambda.schema"] = "kong/plugins/aws-lambda/schema.lua",
    ["kong.plugins.aws-lambda.v4"] = "kong/plugins/aws-lambda/v4.lua",

    ["kong.plugins.request-termination.handler"] = "kong/plugins/request-termination/handler.lua",
    ["kong.plugins.request-termination.schema"] = "kong/plugins/request-termination/schema.lua",
  }
}
