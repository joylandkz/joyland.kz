module Joyland.Component.Search where

import Prelude

import Joyland.HTML.Utils (css)

import Effect.Console (log)
import Effect.Class (class MonadEffect)
import Data.Maybe (Maybe(..))
import Halogen as H
import Halogen.HTML as HH
import Halogen.Hooks as Hooks
import Halogen.HTML.Properties as HP
import Halogen.HTML.Core (PropName(..))
import Halogen.HTML.Events as HE


component ∷ ∀ q i o m. MonadEffect m ⇒ H.Component HH.HTML q i o m
component = Hooks.component \_ _ → Hooks.do

  let
    handleChange value = Just $ do
      H.liftEffect $ log value

  Hooks.pure $
    HH.input
      [ css "input"
      , HP.type_ HP.InputSearch
      , HE.onValueInput handleChange
      ]

