module Joyland.Component.Card
  ( component
  )
  where

import Prelude (($))

import Halogen as H
import Halogen.HTML as HH
import Halogen.Hooks as Hooks

component ∷ ∀ q i o m. H.Component HH.HTML q i o m
component = Hooks.component \_ _ → Hooks.do
  Hooks.pure $
    HH.div_ [ HH.text "card works!" ]

