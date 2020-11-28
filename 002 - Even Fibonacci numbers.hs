module Main where

{-
 a   , b    , a + b , a + 2*b, 2*a + 3*b, 3*a + 5*b 
 (odd, even), odd   , (odd   , even)    , odd
-}

main :: IO () 
main = print 
     . sum 
     . takeWhile (<4000000) 
     $ [ snd i | i <- iterate (\(a, b) -> (a + 2*b, 2*a + 3*b)) (1, 2) ]

{-
Author: bumpy (-_-)
date: 17-Dec-2018
-}
