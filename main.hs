module Main where 
    import anagrama(anagrama, match)
    
    main :: IO ()
    main = do 
        let source = "Listen"
        let anagrams = ["google","banana", "inlets","enlists"]
        let result match(anagrama, source) anagrams
        putStrLn $ "Anagrams of " ++ source ++ ": " + show result
