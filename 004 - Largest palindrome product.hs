module Main where

main :: IO () 
main = print
     . maximum
     $ [ x * y | x <- [999, 998..100], 
                 y <- [999, 998..x],
                 let z = show $ x * y,
                 z == reverse z ]

{-
Author: bumpy (-_-)
date: 17-Dec-2018
-}
