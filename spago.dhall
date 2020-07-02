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
  , "halogen"
  , "halogen-hooks"
  , "psci-support"
  , "strings"
  , "unicode-prelude"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
