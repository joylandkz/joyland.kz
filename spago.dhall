{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "my-project"
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
