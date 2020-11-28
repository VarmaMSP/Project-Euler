module Main where

import Utils (primeFactors)

main :: IO ()
main = print
     . nthTriangle
     . head
     . filter (\x -> if even x 
        then divisorCount (x `div` 2) * divisorCount (x + 1) > 500
        else divisorCount x * divisorCount ((x + 1) `div` 2) > 500
      )
     $ [1..]
  where
    divisorCount :: Int -> Int
    divisorCount = product . map ((+1) . snd) . primeFactors

    nthTriangle :: Int -> Int
    nthTriangle n = (n * (n + 1)) `div` 2

{-
Author: bumpy (-_-)
date: 24-Dec-2018
-}
