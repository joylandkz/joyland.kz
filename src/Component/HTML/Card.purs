module Joyland.HTML.Card where

import Joyland.HTML.Utils

import Halogen as H
import Halogen.HTML as HH

card ∷ ∀ w i. HH.HTML w i
card =
  HH.div
    [ css "card" ]
    [ HH.div [ css "card-content" ]
        [ HH.div [ css "card-content" ]
            [ HH.text "cards html works"]
        ]
    ]

