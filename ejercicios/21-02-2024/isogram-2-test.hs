module Isogram2 (isIsogram2) where

import Data.List (nub)

isIsogram2 :: String -> Bool
isIsogram2 str = length (nub str) == length str
