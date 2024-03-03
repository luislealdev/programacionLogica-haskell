-- Example of the cipher
-- Plain: abcdefghijklmnopqrstuvwxyz
-- Cipher: zyxwvutsrqponmlkjihgfedcba

module Cipher (encode, decode) where

import Data.Char (isSpace)

-- Declarar función encode (recibe un string y devuelve un string)
encode :: String -> String
-- Mapear cada caracter del string
encode =
  -- Aplicar función lambda a cada caracter
  map
    ( \c ->
        -- Devolver el caracter que se encuentra en la posición 25 - (posición del caracter en el alfabeto)
        ['a' .. 'z'] !! (25 - (fromEnum c - fromEnum 'a'))
    )

-- Declarar función decode (recibe un string y devuelve un string)
decode :: String -> String
-- Mapear cada caracter del string
decode =
  map
    ( \c ->
        -- Devolver el caracter que se encuentra en la posición 25 - (posición del caracter en el alfabeto)
        ['a' .. 'z'] !! (25 - (fromEnum c - fromEnum 'a'))
    )
    -- Filtrar los espacios
    . filter (not . isSpace)
