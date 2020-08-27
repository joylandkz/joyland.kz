module Joyland.HTML.Account
  ( accountList
  )
  where

import Prelude (($))

import Joyland.Data.Account (Account)
import Joyland.Data.Username (toString)
import Joyland.HTML.Utils
import Data.Functor (map)
import Data.Maybe (fromMaybe)
import Data.String (Pattern)

import Halogen.HTML as HH


accountList
  ∷ ∀ w i
  . Pattern
  → Array Account
  → Array (HH.HTML w i)
accountList pattern =
  map (\acc →
         HH.div
           [ css "column is-7"]
           [ HH.div
              [ css "card" ]
              [ HH.div [ css "card-content" ]
                  [ level pattern acc ]
           ]
      ])

level ∷ ∀ w i. Pattern → Account → HH.HTML w i
level pattern account =
  HH.div [ css "level" ]
    [ HH.div [ css "level-left" ]
        [ media pattern account ]
    , HH.div [ css "level-right" ]
        [ HH.div [ css "level-item" ] [ HH.text "item-one" ]
        , HH.div [ css "level-item" ] [ HH.text "item-two" ]
        , HH.div [ css "level-item" ] [ HH.text "item-three" ]
        ]
    ]

media ∷ ∀ w i. Pattern → Account → HH.HTML w i
media pattern { username } =
  HH.div [ css "media" ]
    [ HH.div [ css "media-left"]
        [ HH.text "avatar" ]
    , HH.div [ css "media-content" ]
        [ HH.div [ css "content" ]
            [ HH.p_
                [ HH.strong_ [ HH.text "John Smith" ]
                , HH.text " "
                , HH.small_ [ underline pattern (fromMaybe "" $ map toString username) ]
                , HH.br_
                , HH.text "some bio goes here"
                ]
            ]
        ]
    ]

