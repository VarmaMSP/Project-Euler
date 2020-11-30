module Main where

import Utils ( divisorSum ) 

main :: IO ()
main = print
     . sum 
     $ [ i | i <- [2..10000]
           , let j = divisorSumMemo !! i - 1
           , j /= i && j <= 10000 && divisorSumMemo !! j - 1 == i ]
  where
    divisorSumMemo :: [Int]
    divisorSumMemo = divisorSum <$> [1..10000]

{-
Author: bumpy (-_-)
date: 26-Dec-2018
-}
