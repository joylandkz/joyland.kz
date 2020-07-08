module Joyland.Component.Search where

import Prelude

import Joyland.HTML.Utils (css)
import Joyland.Component.HTML.Info (info)

import Effect.Console (log)
import Effect.Class (class MonadEffect)
import Data.Maybe (Maybe(..))
import Data.Tuple.Nested ((/\))
import Data.String (null)
import Halogen as H
import Halogen.HTML as HH
import Halogen.Hooks as Hooks
import Halogen.HTML.Properties as HP
import Halogen.HTML.Core (PropName(..))
import Halogen.HTML.Events as HE


component ∷ ∀ q i o m. MonadEffect m ⇒ H.Component HH.HTML q i o m
component = Hooks.component \_ _ → Hooks.do

  pattern /\ patternId ← Hooks.useState emptyString

  let

    shortenIf cond
      | cond = "is-7"
      | otherwise = "is-12"

    handleChange value = Just $ do
      H.liftEffect $ log value
      Hooks.modify_ patternId (\_ → value)

  Hooks.pure $
    HH.div [ css "columns is-centered is-multiline"]
    [ HH.div
        [ css $ "column " <>
          (shortenIf $ null pattern)
        ]
        [ HH.div [ css "field"]
            [ HH.p [ css "control has-icons-left"]
                [ HH.input
                    [ css "input"
                    , HP.type_ HP.InputSearch
                    , HE.onValueInput handleChange
                    , HP.autofocus true
                    ]
                , HH.span
                    [ css "icon is-small is-left" ]
                    [ HH.i [ css "fas fa-search" ] [] ]
                ]
            ]
        ]
    , HH.div
        [ css $ "column " <>
          (shortenIf $ null pattern)
        ]
        [ info { users: 12, books: 5547 } ]
    ]

emptyString ∷ String
emptyString = ""

