module Main where

main :: IO () 
main = print
     $ sieve [2..] !! 10000
  where
    sieve :: [Int] -> [Int]
    sieve (p:xs) = p : sieve [ x | x <- xs, x `mod` p /= 0 ] 
      
{-
Author: bumpy (-_-)
date: 17-Dec-2018
-}
