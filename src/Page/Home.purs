module Joyland.Page.Home where

import Joyland.Component.HTML.Info (info)
import Data.Symbol (SProxy(..))
import Halogen as H
import Halogen.HTML as HH
import Halogen.Hooks as Hooks
import Joyland.Component.Search as Search
import Joyland.HTML.Utils (css)
import Prelude (Void, absurd, unit, ($))
import Effect.Class (class MonadEffect)


component ∷ ∀ q i m. MonadEffect m ⇒ H.Component HH.HTML q i Void m
component = Hooks.component \_ _ → Hooks.do
  Hooks.pure $
    HH.div [ css "container" ]
      [ HH.div [ css "section" ]
          [ HH.hr_
          , HH.slot _search unit Search.component unit absurd
          ]
      ]

_search ∷ SProxy "search"
_search = SProxy

