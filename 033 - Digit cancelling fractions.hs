module Main where

main :: IO ()
main = print
     . (\(p, q) -> q `div` gcd p q)
     . foldl1 (\(p, q) (r, s) -> (p * r, q * s))
     $ [ (m, n) | a <- [1..9], b <- [1..9], c <- [1..9]
                , let m = 10 * a + c 
                , let n = 10 * b + c
                , m < n && okay m n a b ]
    ++ [ (m, n) | a <- [1..9], b <- [1..9], c <- [1..9]
                , let m = 10 * c + a 
                , let n = 10 * c + b
                , m < n && okay m n a b ]
    ++ [ (m, n) | a <- [1..9], b <- [1..9], c <- [1..9]
                , let m = 10 * c + a
                , let n = 10 * b + c
                , m < n && okay m n a b ]
    ++ [ (m, n) | a <- [1..9], b <- [1..9], c <- [1..9]
                , let m = 10 * a + c
                , let n = 10 * c + b
                , m < n && okay m n a b ]
  where
    okay m n a b = 
      let p = gcd m n 
          q = gcd a b 
      in (m `div` p) == (a `div` q) && 
         (n `div` p) == (b `div` q)

{-
Author: bumpy (-_-)
date: 28-Dec-2018
-}