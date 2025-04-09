package = "org.conman.parsers.abnf"
version = "1.0.0-2"
rockspec_format = "3.0"

source =
{
  url = "https://raw.github.com/spc476/LPeg-Parsers/abnf-1.0.0/abnf.lua"
}

description =
{
  homepage   = "https://github.com/spc476/LPeg-Parsers",
  issues_url = "https://github.com/spc476/LPeg-Parsers/issues",
  maintainer = "Sean Conner <sean@conman.org>",
  license    = "LGPL",
  summary    = "The core BNF ruleset from RFC-5234",
  labels     = { 'lpeg' },
  detailed   = [[
	The core BNF ruleset from RFC-5234.  This is used in a lot of 
	modern RFCs, so it makes sense to break these out.
  ]],
}

dependencies =
{
  "lua  >= 5.1, <= 5.3",
  "lpeg >= 0.12",
}

build =
{
  type = "none",
  copy_directories = {},
  install =
  {
    lua = 
    {
      ['org.conman.parsers.abnf'] = "abnf.lua"
    }
  }
}
