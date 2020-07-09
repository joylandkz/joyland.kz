module Joyland.Data.Username
  ( Username(..)
  , parse
  , toString
  )
  where

import Prelude

import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))

newtype Username = Username String

derive instance genericUsername ∷ Generic Username _
derive instance ordUsername     ∷ Ord Username
derive instance eqUsername      ∷ Eq Username

instance showUsername ∷ Show Username where
  show = genericShow

parse ∷ String → Maybe Username
parse ""  = Nothing
parse str = Just (Username str)

toString ∷ Username → String
toString (Username str) = str

