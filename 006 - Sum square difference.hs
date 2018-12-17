module Main where 

main :: IO ()
main = print
     $ sum [1..100] ^ 2  - sum [ x ^ 2 | x <- [1..100] ]

{-
Author: bumpy (-_-)
date: 17-Dec-2018
-}
