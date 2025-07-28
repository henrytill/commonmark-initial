module Main (main) where

import Commonmark.InitialTest qualified as InitialTest
import Control.Monad (unless)
import System.Exit (exitFailure)
import Text.Printf (printf)

main :: IO ()
main = do
  let (initialOutput, initialPassed) = InitialTest.results
  putStr initialOutput
  printf "Summary: %s\n" (if initialPassed then "All tests passed!" else "Some tests failed.")
  unless initialPassed exitFailure
