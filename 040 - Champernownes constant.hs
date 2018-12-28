module Main where
  
import Data.Char (digitToInt)
import Data.List (intercalate)

main :: IO ()
main = print 
     $ digitToInt (d !! 0)
     * digitToInt (d !! 9)
     * digitToInt (d !! 99)
     * digitToInt (d !! 999)
     * digitToInt (d !! 9999)
     * digitToInt (d !! 99999)
     * digitToInt (d !! 999999)
  where 
    d = intercalate "" 
      . map show
      $ [1..]

{-
Author: bumpy (-_-)
date: 29-Dec-2018
-}