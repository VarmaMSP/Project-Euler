module Main where

main :: IO ()
main = print
     $ sum
     $ primesUpto 2000000

primesUpto :: Int -> [Int]
primesUpto m = sieve [2..m]
  where
    sieve :: [Int] -> [Int]
    sieve n@(p:xs)
      | p <= m'   = p : sieve [ x | x <- xs, x `mod` p /= 0 ]
      | otherwise = n

    m' :: Int
    m' = ceiling . sqrt . fromIntegral $ m

{-
Author: bumpy (-_-)
date: 28-Nov-2020
-}
