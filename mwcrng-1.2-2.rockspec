package = "MWCRNG"
version = "1.2-2"
source = {
    url = "git://github.com/ratanvarghese/mwcrng",
    tag = "v1.2-2"
}
description = {
    summary = "A Multiply-With-Carry Pseudorandom Number Generator.",
    detailed = [[
        This pseudorandom number generator is based on algorithms by George Marsaglia.
        It is designed for games. It is meant to be deterministic and system-agnostic.
        That way, every event in a game can be regenerated by saving the random seed.
    ]],
    homepage = "github.com/ratanvarghese/mwcrng",
    license = "MIT/X11",
}
dependencies = {
    "lua >= 5.3, < 5.4"
}
build = {
    type = "builtin",
    modules = {
        mwcrng = "l_rng.c"
    }
}
