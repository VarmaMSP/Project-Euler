module Main where

main :: IO ()
main = print $ fact 40 `div` (fact 20 ^ 2)
  where
    fact n = product [1..n]

{-
Author: bumpy (-_-)
date: 25-Dec-2018
-}