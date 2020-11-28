module Main where

import Utils (primeFactors)

main :: IO ()
main = print
     . sum 
     $ [ i | i <- [2..10000]
           , let j = sum' i - 1
           , j <= 10000 && j /= i && sum' j - 1 == i ]
  where
    sum' :: Int -> Int
    sum' = (!!) (divisorSum <$> [1..10000]) 

    divisorSum :: Int -> Int
    divisorSum a = subtract a
                 . product
                 . map (\(p, n) -> (p ^ (n+1) - 1) `div` (p - 1))
                 . primeFactors
                 $ a

{-
Author: bumpy (-_-)
date: 26-Dec-2018
-}
