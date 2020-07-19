module Joyland.Component.Card
  ( component
  )
  where

import Joyland.HTML.Card

import Prelude (($))

import Halogen as H
import Halogen.HTML as HH
import Halogen.Hooks as Hooks

component ∷ ∀ q i o m. H.Component HH.HTML q i o m
component = Hooks.component \_ _ → Hooks.do
  Hooks.pure card

