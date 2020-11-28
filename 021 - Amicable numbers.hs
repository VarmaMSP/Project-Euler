module Main where

import Utils as U ( divisorSum ) 

main :: IO ()
main = print
     . sum 
     $ [ i | i <- [2..10000]
           , let j = divisorSum i - 1
           , j /= i && j <= 10000 && divisorSum j - 1 == i ]
  where
    divisorSum :: Int -> Int
    divisorSum = (!!) (U.divisorSum <$> [1..10000])


{-
Author: bumpy (-_-)
date: 26-Dec-2018
-}
