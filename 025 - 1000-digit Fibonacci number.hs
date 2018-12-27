module Main where 

main :: IO ()
main = print
     . head
     . filter ((>=1000) . snd)
     . zip [1..] 
     $ [ length . show . fst $ x | x <- iterate (\(a, b) -> (b, a + b)) (1, 1) ]

{-
Author: bumpy (-_-)
date: 27-Dec-2018
-}