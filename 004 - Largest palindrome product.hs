module Main where

main :: IO () 
main = print
     . maximum
     $ [ x * y | x <- [100..999], 
                 y <- [100..x],
                 let s = show $ x * y,
                 s == reverse s ]

{-
Author: bumpy (-_-)
date: 17-Dec-2018
-}
