module Joyland.HTML.Utils where

import Prelude (($), Unit, unit)
import Data.Maybe(Maybe(..))
import Halogen.HTML as HH
import Unsafe.Coerce
import Halogen.HTML.Properties as HP

css ∷ ∀ a b. String → HP.IProp (class ∷ String | b) a
css value = HP.class_ $ HH.ClassName value

maybeElem ∷ ∀ w i a. Maybe a → (a → HH.HTML w i) → HH.HTML w i
maybeElem (Just x) f = f x
maybeElem _ _ = HH.text ""

whenElem ∷ ∀ w i. Boolean → (Unit → HH.HTML w i) → HH.HTML w i
whenElem cond f = if cond then f unit else HH.text ""

-- | Underline text in an html widget
-- | This should be redesigned and moved to a seperate module
underline ∷ ∀ w i. String → HH.HTML w i → HH.HTML w i
underline pattern = unsafeCoerce

