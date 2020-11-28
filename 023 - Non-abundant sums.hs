module Main where 

import qualified Data.Set as Set
import           Utils (divisorSum)

main :: IO ()
main = print
     . (\s -> sum [1..28123] - sum s)
     . Set.fromList
     $ [ x + y | x <- abundant
               , y <- abundant
               , x + y <= 28123 ]
  where
    abundant :: [Int]
    abundant = [ x | x <- [1..28123], divisorSum x > x ]
    

{-
Author: bumpy (-_-)
date: 27-Dec-2018
-}
