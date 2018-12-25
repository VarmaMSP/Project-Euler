module Main where

factors :: Int -> [(Int, Int)]
factors m = 
  let (fs, x) = foldl (
        \(f, n) p -> if n `mod` p == 0
          then let (c, n') = divide n p in ((p, c) : f, n') -- n / (p ^ c) = n'
          else (f, n)
        ) ([], m) [2..ceiling . sqrt . fromIntegral $ m]
  in fs ++ [(x, 1) | x > 1]
  where
    divide a b = case a `divMod` b of
      (q, 0) -> uncurry (\u v -> (u + 1, v)) $ divide q b
      _      -> (0, a)

main :: IO ()
main = print
     . nthTriangle
     . head
     . filter (\x -> if even x 
        then divisors (x `div` 2) * divisors (x + 1) > 500
        else divisors x * divisors ((x + 1) `div` 2) > 500
      )
     $ [1..]
  where 
    divisors = product . map ((+1) . snd) . factors
    nthTriangle n = (n * (n + 1)) `div` 2

{-
Author: bumpy (-_-)
date: 24-Dec-2018
-}