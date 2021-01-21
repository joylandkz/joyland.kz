{ name = "joyland.kz"
, dependencies =
  [ "affjax"
  , "console"
  , "datetime"
  , "effect"
  , "transformers"
  , "generics-rep"
  , "halogen"
  , "halogen-hooks"
  , "psci-support"
  , "strings"
  , "unicode-prelude"
  , "html-parser-halogen"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
