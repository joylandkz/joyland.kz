module Joyland.Page.Home where

import Prelude (Void, identity)
import Joyland.HTML.Utils (css)
import Halogen as H
import Halogen.HTML as HH


component ∷ ∀ q i m. H.Component HH.HTML q i Void m
component =
  H.mkComponent
    { initialState: identity
    , eval: H.mkEval H.defaultEval
    , render
    }
  where
    render ∷ ∀ props action. action → HH.HTML props action
    render _ =
      HH.div [ css "container" ] [ HH.text "hello world" ]

