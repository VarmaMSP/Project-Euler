module Main where 

import Data.Char (digitToInt)

main :: IO ()
main = print
     . sum 
     $ [ x | x <- [3..362880]
           , digitSum x == x ]
  where 
    digitSum :: Int -> Int
    digitSum = sum 
             . map (fact . digitToInt)
             . show
    
    fact :: Int -> Int
    fact n = product [1..n]

{-
Author: bumpy (-_-)
date: 29-Dec-2018
-}
