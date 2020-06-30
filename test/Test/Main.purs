module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Aff (launchAff_)
import Test.Spec (pending, describe, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Runner (runSpec)
import Test.Spec.Reporter.Console (consoleReporter)

main :: Effect Unit
main = launchAff_ $ runSpec [consoleReporter] do
  describe "test samples" do
    pending "pending test"
    it "adds some numbers" do
      (1 + 1) `shouldEqual` 2

