module Joyland.HTML.Card
  ( card
  )
  where

import Joyland.HTML.Utils

import Halogen.HTML as HH


card ∷ ∀ w i. HH.HTML w i
card =
  HH.div
    [ css "card" ]
    [ HH.div [ css "card-content" ]
        [ level ]
    ]

level ∷ ∀ w i. HH.HTML w i
level =
  HH.div [ css "level" ]
    [ HH.div [ css "level-left" ]
        [ media ]
    , HH.div [ css "level-right" ]
        [ HH.div [ css "level-item" ] [ HH.text "item-one" ]
        , HH.div [ css "level-item" ] [ HH.text "item-two" ]
        , HH.div [ css "level-item" ] [ HH.text "item-three" ]
        ]
    ]

media ∷ ∀ w i. HH.HTML w i
media =
  HH.div [ css "media" ]
    [ HH.div [ css "media-left"]
        [ HH.text "avatar" ]
    , HH.div [ css "media-content" ]
        [ HH.div [ css "content" ]
            [ HH.p_
                [ HH.strong_ [ HH.text "John Smith" ]
                , HH.text " "
                , HH.small_ [ HH.text "@johnsmith" ]
                , HH.br_
                , HH.text "some bio goes here"
                ]
            ]
        ]
    ]

