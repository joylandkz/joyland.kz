module Joyland.Component.HTML.Info where

import Joyland.HTML.Utils (css)

import Prelude (($), show)
import Halogen.HTML as HH

info ∷ ∀ w i. { users ∷ Int, books ∷ Int} → HH.HTML w i
info { users, books } =
  HH.nav
    [ css "level" ]
    [ HH.div
        [ css "level-item has-text-centered" ]
        [ HH.div_
            [ HH.p [ css "heading" ] [ HH.text "" ]
            , HH.p [ css "title" ] [ HH.text ""]
            ]
        ]
    , HH.div
        [ css "level-item has-text-centered" ]
        [ HH.div_
            [ HH.p [ css "heading" ] [ HH.text "Пользователей" ]
            , HH.p [ css "title" ] [ HH.text $ show users ]
            ]
        ]
    , HH.div
        [ css "level-item has-text-centered" ]
        [ HH.div_
            [ HH.p [ css "heading" ] [ HH.text "Книг" ]
            , HH.p [ css "title" ] [ HH.text $ show books ]
            ]
        ]
    , HH.div
        [ css "level-item has-text-centered" ]
        [ HH.div_
            [ HH.p [ css "heading" ] [ HH.text "" ]
            , HH.p [ css "title" ] [ HH.text ""]
            ]
        ]
    ]

