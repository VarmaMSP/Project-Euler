module Main where

import Utils (primeFactors)

main :: IO ()
main = print
     . nthTriangle
     . head
     . filter (\x -> if even x 
        then divisors (x `div` 2) * divisors (x + 1) > 500
        else divisors x * divisors ((x + 1) `div` 2) > 500
      )
     $ [1..]
  where 
    divisors = product . map ((+1) . snd) . primeFactors
    nthTriangle n = (n * (n + 1)) `div` 2

{-
Author: bumpy (-_-)
date: 24-Dec-2018
-}
