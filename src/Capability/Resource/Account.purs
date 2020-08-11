module Joyland.Capability.Resource.Account where

import Joyland.Data.Account
import Control.Monad (class Monad)
import Control.Monad.Trans.Class (lift)
import Halogen as H

class Monad m <= ManageAccount m where
  fetchAccounts ∷ m (Array Account)

instance halogenMManageAccount
  ∷ ManageAccount m
  ⇒ ManageAccount (H.HalogenM st act slots o m) where
  fetchAccounts = lift fetchAccounts

