module Main

main : IO ()
main = do
     putStrLn "Enter"
     x <- getLine
     putStrLn ("Hello " ++ x ++ "!")

printInput : IO ()
printInput = do x <- getLine
                putStrLn x

printInput' : IO ()
printInput' = getLine >>= putStrLn

printLength : IO ()
printLength = do putStr "Input String: "
                 input <- getLine
                 let len = length input
                 putStrLn (show len)

printLonger : IO ()
printLonger = do putStr "Input String 1: "
                 i1 <- getLine
                 putStr "Input String 2: "
                 i2 <- getLine
                 putStrLn $ show $ length i2 + length i1
