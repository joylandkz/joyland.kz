module Main where

import Prelude
import Joyland.Page.Home (component)

import Effect (Effect)
import Effect.Aff (launchAff_)
import Halogen.Aff (awaitBody)
import Halogen.VDom.Driver (runUI)
import Effect.Console (log)


main ∷ Effect Unit
main = do
  log "welcome to joyland"
  launchAff_ do
    body ← awaitBody
    runUI component unit body

