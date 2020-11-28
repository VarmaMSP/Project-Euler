module Main where
  
import qualified Data.Set as Set

main :: IO ()
main = print
     . length
     . Set.fromList
     $ [ a ^ b | a <- [2..100], b <- [2..100] ]

{-
Author: bumpy (-_-)
date: 27-Dec-2018
-}
