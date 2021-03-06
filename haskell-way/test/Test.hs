module Main where

import GravitySort
import MergeSort
import System.Exit
import Test.Util

-- testing array
testList = [12234, 34532, 543, 1, 324, 6534]

-- test gravity sort on a given list
testGravitySort :: [Int] -> Bool
testGravitySort x = and [isSorted x', areSame x x']
  where x' = gravitySort x

-- test merge sort on a given list
testMergeSort :: (Ord a) => [a] -> Bool
testMergeSort x = and [isSorted x', areSame x x']
  where x' = mergeSort x

main :: IO ()
main = if and allTests then exitSuccess else exitFailure

allTests :: [Bool]
allTests =  [
    testGravitySort testList
  , testMergeSort testList
  ]

  
