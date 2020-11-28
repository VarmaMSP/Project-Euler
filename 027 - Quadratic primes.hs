module Main where

import Data.List (maximumBy)
import Data.Ord (comparing)
import Utils (isPrime, primes)

main :: IO ()
main = print
     . fst
     . maximumBy (comparing snd)
     $ [ (a * b, len a b) | a <- [-1000..1000]
                          , b <- takeWhile (<=1000) primes ]
  where
    len :: Int -> Int -> Int
    len a b = length 
          . takeWhile isPrime 
          $ [ (n ^ 2) + (n * a) + b | n <- [0..] ]

{-
Author: bumpy (-_-)
date: 27-Dec-2018
-}
