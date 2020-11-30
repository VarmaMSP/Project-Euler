module Main where

main :: IO ()
main = print
     $ sum
     $ primesUpto 2000000

primesUpto :: Int -> [Int]
primesUpto n = sieve [2..n]
  where
    sieve :: [Int] -> [Int]
    sieve m@(p:xs)
      | p <= n'   = p : sieve [ x | x <- xs, x `mod` p /= 0 ]
      | otherwise = m

    n' :: Int
    n' = ceiling . sqrt . fromIntegral $ n

{-
Author: bumpy (-_-)
date: 28-Nov-2020
-}
