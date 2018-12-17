module Main where

main :: IO ()
main = print 
     . sum 
     $ [ i | i <- [1..999], i `mod` 3 == 0 || i `mod` 5 == 0]

{-
Author: bumpy (-_-)
date: 17-Dec-2018
-}
