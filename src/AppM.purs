module Joyland.AppM where


import Prelude (($), (<<<))

import Effect.Class (class MonadEffect)
import Effect.Aff (Aff)
import Effect.Aff.Class (class MonadAff)
import Control.Monad
import Joyland.Capability.Resource.Account (class ManageAccount)
import Joyland.Data.Account (mockAccounts)
import Joyland.Data.Username (toString)
import Data.Array (filter)
import Data.String (contains)
import Data.Maybe (fromMaybe)


-- | TODO: Change `Aff a` to `ReaderT ...` monad stack later
newtype AppM a = AppM (Aff a)

derive newtype instance functorAppM     ∷ Functor AppM
derive newtype instance bindAppM        ∷ Bind AppM
derive newtype instance applyAppM       ∷ Apply AppM
derive newtype instance applicativeAppM ∷ Applicative AppM
derive newtype instance monadAppM       ∷ Monad AppM
derive newtype instance monadEffectAppM ∷ MonadEffect AppM
derive newtype instance monadAffAppM    ∷ MonadAff AppM

-- `fetchAccounts` should be replaced to a proper API call later
instance appMManageAccount ∷ ManageAccount AppM where
  fetchAccounts pattern = do
    let unwrap = fromMaybe ""
    pure $
      filter (\{ username } →
                contains pattern <<< unwrap $ map toString username
             )
      mockAccounts

