module Utils where

primes :: [Int]
primes = sieve [2..]
  where
    sieve :: [Int] -> [Int]
    sieve (p:xs) = p : sieve [ x | x <- xs, x `mod` p /= 0 ]

isPrime :: Int -> Bool
isPrime n = length (primeFactors n) == 1

divisorSum :: Int -> Int
divisorSum n = subtract n
             . product 
             . map (\(p, n) -> (p ^ (n + 1) - 1) `div` (p - 1))
             . primeFactors
             $ n

primeFactors :: Int -> [(Int, Int)]
primeFactors m = 
  let (factors, rem) = foldl (
          \(f, n) p -> if n `mod` p == 0 
            then let (n', c) = divide n p in ((p, c) : f, n')
            else (f, n)
        ) ([], m) [2..m']
  in [(rem, 1) | rem > 1] <> factors 
  where
    divide :: Int -> Int -> (Int, Int)
    divide a b = case a `divMod` b of
      (q, 0) -> (\(u, v) -> (u, v + 1)) $ divide q b
      _      -> (a, 0)

    m' :: Int
    m' = ceiling . sqrt . fromIntegral $ m
