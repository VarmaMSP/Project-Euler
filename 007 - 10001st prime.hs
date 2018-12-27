module Main where

import Utils (primes)

main :: IO () 
main = print $ primes !! 10000

{-
Author: bumpy (-_-)
date: 17-Dec-2018
-}
