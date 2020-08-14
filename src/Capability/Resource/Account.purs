module Joyland.Capability.Resource.Account where

import Prelude ((<<<))

import Joyland.Data.Account
import Control.Monad (class Monad)
import Control.Monad.Trans.Class (lift)
import Halogen as H
import Halogen.Hooks as Hooks
import Data.String.Pattern (Pattern)

class Monad m <= ManageAccount m where
  fetchAccounts ∷ Pattern → m (Array Account)

instance halogenMManageAccount
  ∷ ManageAccount m
  ⇒ ManageAccount (H.HalogenM st act slots o m) where
  fetchAccounts = lift <<< fetchAccounts

instance hookMManageAccount
  ∷ ManageAccount m
  ⇒ ManageAccount (Hooks.HookM m) where
  fetchAccounts = lift <<< fetchAccounts

