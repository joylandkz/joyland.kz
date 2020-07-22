module Joyland.Capability.Logging where

import Prelude (Unit, (<<<))
import Data.DateTime
import Halogen as H
import Control.Monad.Trans.Class (lift)
import Control.Monad (class Monad)

type Message =
  { timestamp ∷ DateTime
  , text      ∷ String
  }

class Monad m <= Logging m where
  log ∷ Message → m Unit

instance loggingHalogenM
  ∷ Logging m
  ⇒ Logging (H.HalogenM st act slots o m) where
  log = lift <<< log

