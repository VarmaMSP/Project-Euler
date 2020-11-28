module Main where 

main :: IO () 
main = print 
     $ sum [ x ^ x | x <- [1..1000] ] `mod` 10000000000

{-
Author: bumpy (-_-)
date: 29-Dec-2018
-}
