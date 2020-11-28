module Main where

import Data.Char (digitToInt)

main :: IO ()
main = print
     . sum
     . map digitToInt
     . show
     . product
     $ [1..100]

{-
Author: bumpy (-_-)
date: 25-Dec-2018
-}
