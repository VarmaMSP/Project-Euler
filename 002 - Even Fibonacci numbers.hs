module Main where

main :: IO () 
main = print 
     . sum 
     . takeWhile (<4000000) 
     $ [ snd i | i <- iterate (\(a, b) -> (a + 2*b, 2*a + 3*b)) (1, 2) ]

{-
Author: bumpy (-_-)
date: 17-Dec-2018
-}
