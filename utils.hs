module Utils (
  isPrime,
  primeFactors,
  primes
) where

primeFactors :: Int -> [(Int, Int)]
primeFactors m = 
  let (factors, x) = foldl (
          \(f, n) p -> if n `mod` p == 0 
            then let (n', c) = divide n p in ((p, c) : f, n') -- n / (p ^ c) = n'
            else (f, n)
        ) ([], m) [2..ceiling . sqrt . fromIntegral $ m]
  in [(x, 1) | x > 1] ++ factors
  where 
    divide a b = case a `divMod` b of
      (q, 0) -> uncurry (\u v -> (u, v + 1)) $ divide q b
      _      -> (a, 0)

primes :: [Int]
primes = f [2..]
  where f (p:xs) = p : f [ x | x <- xs, x `mod` p > 0 ]

isPrime :: Int -> Bool
isPrime n = (length . primeFactors $ n) == 1