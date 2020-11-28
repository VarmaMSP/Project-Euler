module Main where 

main :: IO ()
main = print 
     . head
     $ [ x | x <- [21..], x `div` 20 == 0 &&
                          x `div` 19 == 0 && 
                          x `div` 18 == 0 &&
                          x `div` 17 == 0 && 
                          x `div` 16 == 0 &&
                          x `div` 15 == 0 && 
                          x `div` 14 == 0 &&
                          x `div` 13 == 0 && 
                          x `div` 12 == 0 &&
                          x `div` 11 == 0 ]

{-
Author: bumpy (-_-)
date: 17-Dec-2018
-}
