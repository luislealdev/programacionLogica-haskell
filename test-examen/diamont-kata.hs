import Data.Char (ord)

-- Calcula la distancia entre el caracter dado y 'A'.
distanceFromA :: Char -> Int
distanceFromA c = ord c - ord 'A'

-- Genera los espacios necesarios para alinear los caracteres.
spaces :: Int -> String
spaces m = replicate m ' '

-- Genera una línea del diamante correspondiente al número de línea i.
generateLine :: Int -> Int -> String
generateLine n i
  | i == 0    = spaces (n - i) ++ [chr]
  | otherwise = spaces (n - i) ++ [chr] ++ spaces (2 * i - 1) ++ [chr]
  where
    chr = toEnum (i + ord 'A')

-- Utilizando la función `generateLine`, genera cada línea de la mitad superior del diamante.
generateTop :: Char -> [String]
generateTop c = [generateLine n i | i <- [0 .. n]]
  where
    n = distanceFromA c

-- Genera la mitad inferior del diamante utilizando la mitad superior pero en reversa.
generateBottom :: [String] -> [String]
generateBottom = tail . reverse

-- Genera el diamante completo utilizando la mitad superior y la mitad inferior.
generateDiamond :: Char -> [String]
generateDiamond c = top ++ bottom
  where
    top = generateTop c
    bottom = generateBottom top

-- Imprime el diamante en la consola.
printDiamond :: Char -> IO ()
printDiamond c = mapM_ putStrLn $ generateDiamond c
