package = "luadbi-duckdb"
version = "0.7.4-1"

description = {
	summary = "Database abstraction layer",
	detailed = [[
		LuaDBI is a database interface library for Lua. It is designed 
		to provide a RDBMS agnostic API for handling database 
		operations. LuaDBI also provides support for prepared statement 
		handles, placeholders and bind parameters for all database 
		operations.
		
		This rock is the DuckDB DBD module. You will also need the
		base DBI module to use this software.
	]],
	
	license = "MIT/X11",
	homepage = "https://github.com/mwild1/luadbi"
}

source = {
	url = "git://github.com/mwild1/luadbi",
	tag = "v0.7.4"
}

dependencies = {
	"lua >= 5.1, < 5.5",
	"luadbi = 0.7.4"
}

external_dependencies = {
	DUCKDB = { header = "duckdb.h" }
}

build = {
	type = "builtin",
	modules = {
		['dbd.duckdb'] = {
			sources = {
				'dbd/common.c',
				'dbd/duckdb/main.c',
				'dbd/duckdb/statement.c',
				'dbd/duckdb/connection.c'
			},
		
			libraries = {
				'duckdb'
			},
			
			incdirs = {
				"$(DUCKDB_INCDIR)",
				'./'
			},
			
			libdirs = {
				"$(DUCKDB_LIBDIR)"
			}
		}
	}
}
