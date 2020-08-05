module Main where

import Prelude
import Joyland.Page.Home (component)

import Joyland.AppM (AppM(..))
import Effect (Effect)
import Effect.Aff (launchAff_, Aff)
import Halogen.Aff (awaitBody)
import Halogen.VDom.Driver (runUI)
import Halogen (hoist)
import Effect.Console (log)


main ∷ Effect Unit
main = do
  log "welcome to joyland"
  launchAff_ do

    let runAppM ∷ AppM ~> Aff
        runAppM (AppM aff) = aff

    body ← awaitBody
    runUI (hoist runAppM component) unit body

