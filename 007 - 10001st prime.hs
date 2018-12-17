module Main where

seive :: [Int] -> [Int]
seive (p : xs) = p : seive [ x | x <- xs, x < p ^ 2 || x `mod` p > 0 ]

main :: IO () 
main = print $ seive [2..] !! 10000

{-
Author: bumpy (-_-)
date: 17-Dec-2018
-}
