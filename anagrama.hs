module Anagram where

import Data.Char (toLower)
import Data.List (nub, sort)  -- Agrega sort a las importaciones

-- Definición de tipo para representar Anagram
newtype Anagram = Anagram String deriving (Show, Eq)

-- Función para verificar si dos cadenas son anagramas
-- Dar tipado: Tipo de dato, parámetro y resultado
checkAnagram :: Anagram -> String -> Bool
checkAnagram (Anagram source) word =
    -- $ equivale a () cuando es una sola línea
    -- nub sirve para eliminar letras iguales
  let sourceList = nub $ map toLower source
      wordList = nub $ map toLower word
  in sort sourceList == sort wordList

-- Función para encontrar anagramas en una lista de palabras
findAnagrams :: Anagram -> [String] -> [String]
findAnagrams source = filter (checkAnagram source)