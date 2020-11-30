module Main where 

import qualified Data.Set as Set
import           Utils (divisorSum)

main :: IO ()
main = print
     . (\s -> sum [1..n] - sum s)
     . Set.fromList
     $ [ x + y | x <- abundant
               , y <- abundant
               , x + y <= n ]
  where
    abundant :: [Int]
    abundant = [ x | x <- [1..n], divisorSum x > x ]

    n :: Int 
    n = 28123

{-
Author: bumpy (-_-)
date: 27-Dec-2018
-}
