module Main where

import Utils (primeFactors)

main :: IO ()
main = print
     . fst 
     . head
     . primeFactors
     $ 600851475143
  
{-
Author: bumpy (-_-)
date: 17-Dec-2018
-}
