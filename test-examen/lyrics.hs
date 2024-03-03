module Lyrics (printLyrics) where

-- Función
printLyrics =
  -- Elimina el salto de línea al final de la lista de strings y los [] que lo rodean
  unlines $
  -- Invierte la lista de strings
    reverse
      ( 
        -- Mapea la lista de números del 1 al 99 a la lista de strings que representan las estrofas de la canción
        map
          (\x -> 
            -- Si x - 1 es igual a 1, entonces se imprime "bottle", de lo contrario, se imprime "bottles"
            -- Si x - 1 es igual a 0, entonces se imprime "No more...", de lo contrario, se imprime x
            show x ++ " bottles of beer on the wall," ++ show x ++ " bottles of beer. Take one down and pass it around, " ++ show (x - 1) ++ (if x - 1 == 1 then " bottle" else " bottles") ++ " of beer on the wall.")
          -- Lista de números del 1 al 99
          [1 .. 99]
      )
      ++ ["No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."]
