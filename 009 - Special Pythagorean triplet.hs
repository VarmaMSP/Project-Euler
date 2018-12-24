module Main where

main :: IO ()
main = print
     . head
     $ [ a * b * c | a <- [1..1000],
                     b <- [a..1000],
                     let c = 1000 - a - b,
                     a ^ 2 + b ^ 2 == c ^ 2 ]

{-
Author: bumpy (-_-)
date: 19-Dec-2018
-}