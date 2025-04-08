package = "luamqtt"
version = "2.0.0-1"
source = {
	url = "git://github.com/xHasKx/luamqtt",
	tag = "v2.0",
}
description = {
	summary = "luamqtt - Pure-lua MQTT client",
	detailed = [[
luamqtt - MQTT client library written in pure-lua.
The only dependency is luasocket to establish network connection to MQTT broker.
]],
	homepage = "https://github.com/xHasKx/luamqtt",
	license = "MIT",
}
dependencies = {
	"lua >= 5.1, < 5.4",
	"luasocket >= 3.0rc1-2",
}
build = {
	type = "builtin",
	modules = {
		mqtt = "mqtt/init.lua",
		["mqtt.client"] = "mqtt/client.lua",
		["mqtt.ioloop"] = "mqtt/ioloop.lua",
		["mqtt.bit53"] = "mqtt/bit53.lua",
		["mqtt.bitwrap"] = "mqtt/bitwrap.lua",
		["mqtt.luasocket"] = "mqtt/luasocket.lua",
		["mqtt.luasocket_ssl"] = "mqtt/luasocket_ssl.lua",
		["mqtt.protocol"] = "mqtt/protocol.lua",
		["mqtt.protocol4"] = "mqtt/protocol4.lua",
		["mqtt.tools"] = "mqtt/tools.lua",
	},
}
