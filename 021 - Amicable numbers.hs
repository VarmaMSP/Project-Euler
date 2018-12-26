module Main where

import qualified Data.Map.Strict as Map
import           Data.Map.Strict ((!))

main :: IO ()
main =
  let d = Map.fromList $ f (zip [1..10000] (repeat 0))
  in print
    . sum
    $ [i | i <- [2..10000]
         , let j = d ! i
         , j <= 10000 && j /= i && d ! j == i]
  where f []            = []
        f ((n, m) : xs) = 
          (n, m) : f (
            uncurry (
              \a b -> if a `mod` n == 0
                then (a, b + n)
                else (a, b)
            ) <$> xs
          )

{-
Author: bumpy (-_-)
date: 26-Dec-2018
-}