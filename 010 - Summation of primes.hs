module Main where

main :: IO ()
main = print
     $ sum
     $ primesUpto 2000000

primesUpto :: Int -> [Int]
primesUpto m = seive [2..m]
  where
    seive n@(p:xs)
      | p <= m'   = p : seive [ x | x <- xs, x `mod` p /= 0 ]
      | otherwise = n

    m' = ceiling . sqrt . fromIntegral $ m

{-
Author: bumpy (-_-)
date: 28-Nov-2020
-}
