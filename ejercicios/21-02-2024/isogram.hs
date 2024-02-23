module Isogram (isIsogram, lettersOf) where

import Data.Char (isLetter, toUpper)
import Data.List (nub, sort)

isIsogram :: String -> Bool
isIsogram word = sort (lettersOf word) == sort (uniqueLettersOf word)

lettersOf word = map toUpper $ filter isLetter word

uniqueLettersOf word = nub $ lettersOf word