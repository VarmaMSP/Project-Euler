module Main where

main :: IO ()
main = print . fst $ foldl (
  \(res, n) f -> 
    if n `mod` f == 0 
      then (f, until (\x -> x `mod` f > 0) (`quot` f) n)
      else (res, n)
  ) (1, 600851475143) [2..ceiling (sqrt 600851475143)]

{-
Author: bumpy (-_-)
date: 17-Dec-2018
-}
