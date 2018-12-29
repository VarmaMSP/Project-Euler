module Main where 

main :: IO ()
main = print 
     . sum
     $ [ x | x <- [1..1000000]
           , let a = show x
           , let b = toBase2 x
           , a == reverse a && b == reverse b ]
  where
    toBase2 n = case n `divMod` 2 of 
      (0, q) -> show q
      (p, q) -> toBase2 p ++ show q

{-
Author: bumpy (-_-)
date: 29-Dec-2018
-}