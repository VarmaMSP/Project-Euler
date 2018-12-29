module Main where
  
import Data.Char (digitToInt)

main :: IO ()
main = print 
     $ digitToInt (d !! 1)
     * digitToInt (d !! 10)
     * digitToInt (d !! 100)
     * digitToInt (d !! 1000)
     * digitToInt (d !! 10000)
     * digitToInt (d !! 100000)
     * digitToInt (d !! 1000000)
  where 
    d = concatMap show [0..]

{-
Author: bumpy (-_-)
date: 29-Dec-2018
-}