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
printLonger = do putStr "First String: "
                 i1 <- getLine
                 putStr "Second String: "
                 i2 <- getLine
                 let len1 = length i1
                 let len2 = length i2
                 let len = if len1 > len2
                           then len1
                           else len2
                 putStrLn $ show len

printLonger' : IO ()
printLonger' = putStr "First String: " >>=
               \_ => getLine >>=
               \i1 => putStr "Second String: " >>=
               \_ => getLine >>=
               \i2 => putStrLn $ show $
                      if length i1 > length i2
                      then length i1
                      else length i2



