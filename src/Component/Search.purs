module Joyland.Component.Search where

import Prelude

import Joyland.HTML.Utils (css)

import Halogen as H
import Halogen.HTML as HH
import Halogen.Hooks as Hooks
import Halogen.HTML.Properties as HP


component ∷ ∀ q i o m. H.Component HH.HTML q i o m
component = Hooks.component \_ _ → Hooks.do

  Hooks.pure $
    HH.input [ css "input", HP.type_ HP.InputSearch ]

