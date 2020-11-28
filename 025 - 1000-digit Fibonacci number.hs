module Main where 

main :: IO ()
main = print
     . head
     $ [ i | (i, (fib, _)) <- zip [1..] (iterate (\(a, b) -> (b, a + b)) (1, 1))
           , length (show fib) >= 1000 ]

{-
Author: bumpy (-_-)
date: 27-Dec-2018
-}
