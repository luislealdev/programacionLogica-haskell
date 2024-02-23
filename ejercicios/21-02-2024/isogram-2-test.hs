module Isogram2 (isIsogram2) where

import Data.List (nub)
import Data.Char (toLower)

isIsogram2 :: String -> Bool
isIsogram2 str = length (nub (map toLower str)) == length str
