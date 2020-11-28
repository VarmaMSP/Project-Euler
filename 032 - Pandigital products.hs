module Main where 

import           Data.List (permutations)
import qualified Data.Set as Set

main :: IO ()
main = print
     . sum
     . Set.fromList
     $ [ toInt . drop 5 $ x | x <- permutations [1..9]
                            , okay x ]
  where
    okay (a:b:c:d:e:f:g:h:i:_) =
      let p = toInt [f, g, h, i]
      in toInt [a, b, c] * toInt [d, e] == p || 
         toInt [a, b] * toInt [c, d, e] == p || 
         toInt [a, b, c, d] * e == p || 
         a * toInt [b, c, d, e] == p
    okay _                      = False

    toInt a = 
      let l = length a 
      in sum $ zipWith (*) [ 10 ^ x | x <- [l-1, l-2..0] ] a

{-
Author: bumpy (-_-)
date: 28-Dec-2018
-}