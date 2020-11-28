module Main where

import Data.Char (digitToInt) 

main :: IO ()
main = print
     . sum
     $ [ x | x <- [2..354294], digitSum x == x ]
  where
    digitSum :: Int -> Int
    digitSum = sum 
             . map ((^5) . digitToInt)
             . show

{-
Author: bumpy (-_-)
date: 28-Dec-2018
-}
