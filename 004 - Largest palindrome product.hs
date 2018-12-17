module Main where

main :: IO () 
main = print
     . maximum
     $ [ x * y | x <- [999, 998..100], 
                 y <- [999, 998..x], 
                 isPalin(x * y) ]
  where 
    isPalin z = 
      let a = (z `mod` 1000000) `quot` 100000
          b = (z `mod` 100000) `quot` 10000
          c = (z `mod` 10000) `quot` 1000
          d = (z `mod` 1000) `quot` 100
          e = (z `mod` 100) `quot` 10
          f = (z `mod` 10) `quot` 1
      in a == f && b == e && c == d

{-
Author: bumpy (-_-)
date: 17-Dec-2018
-}
