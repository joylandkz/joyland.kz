module Joyland.Data.Account where

import Joyland.Data.Username
import Data.Maybe (Maybe(..))


type AccountRep row =
  ( id ∷ String
  , username ∷ Maybe Username
  , bio ∷ Maybe String
  , image ∷ Maybe String
  | row
  )

type Account = { | AccountRep () }

mockAccounts ∷ Array Account
mockAccounts =
  [ { id: "4321234"
    , username: parse "username"
    , bio: Nothing
    , image: Nothing
    }
  , { id: "321456"
    , username: parse "username"
    , bio: Nothing
    , image: Nothing
    }
  , { id: "321456"
    , username: parse "username"
    , bio: Nothing
    , image: Nothing
    }
  ]

