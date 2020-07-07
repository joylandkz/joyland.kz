module Joyland.Component.HTML.Info where

import Joyland.HTML.Utils (css)

import Prelude (($), show, (<>))
import Halogen.HTML as HH

info ∷ ∀ w i. { users ∷ Int, books ∷ Int} → HH.HTML w i
info { users, books } =
  HH.nav
    [ css "level" ]
    [ HH.div [ css "level-left"] []
    , HH.div
        [ css "level-right" ]
        [ HH.p
            [ css "level-item has-text-info-dark" ]
            [ HH.text $ show users <> " пользователей," ]
        , HH.p
            [ css "level-item has-text-info-dark" ]
            [ HH.text $ show books <> " книг"]
        ]
    ]

