package = "lua-fann"
version = "0.4-1"

source = {
  url = "https://github.com/msva/lua-fann/archive/0.4.zip",
  dir = "lua-fann-0.4",
}

description = {
  summary = "A set of Lua bindings for the Fast Artificial Neural Network (FANN) library",
  detailed = [[
  ]],
  homepage = "https://github.com/lua-fann",
  license  = "MIT/X11"
}

dependencies = {
  "lua >= 5.1, < 5.3"
}

external_dependencies = {
  platforms = {
    windows = {
      fann = {
        header  = "fann.h",
        library = "libfann",
      }
    };
    unix = {
      fann = {
        header  = "fann.h",
        library = "fann",
      }
    };
  }
}

build = {
  type = "builtin",

  platforms = {
    windows = { modules = {
      fann = {
        libraries = {"libfann", "ws2_32"},
      }
    }},
    unix    = { modules = {
      fann = {
        libraries = {"fann"},
      }
    }}
  },

  modules = {
    fann = {
      sources = {
        "src/fann.c"
      },
    },
  }
}


