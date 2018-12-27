module Main where

import Utils (primeFactors)

main :: IO ()
main = 
  let d = [ divisorSum x | x <- [1..10000]]
  in print
    . sum 
    $ [ i | i <- [2..10000]
          , let j = d !! (i-1)
          , j <= 10000 && j /= i && d !! (j-1) == i ]
  where
    divisorSum a = subtract a
                 . product
                 . map (\(p, n) -> (p ^ (n+1) - 1) `div` (p-1))
                 . primeFactors
                 $ a

{-
Author: bumpy (-_-)
date: 26-Dec-2018
-}