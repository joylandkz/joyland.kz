module Joyland.HTML.Utils where

import Prelude (($))
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP

css ∷ ∀ a b. String → HP.IProp (class ∷ String | b) a
css value = HP.class_ $ HH.ClassName value

