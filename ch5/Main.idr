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

readNumber : IO (Maybe Nat)
readNumber = do
           input <- getLine
           if all isDigit (unpack input)
           then pure (Just (cast input))
           else pure Nothing

readPair : IO (String, String)
readPair = do str1 <- getLine
              str2 <- getLine
              pure (str1, str2)

usePair : IO ()
usePair = do (str1, str2) <- readPair
             putStrLn ("You entere" ++ str1 ++ " and " ++ str2)

readNumbers : IO (Maybe (Nat, Nat))
readNumbers =
            do Just num1_ok <- readNumber | Nothing => pure Nothing
               Just num2_ok <- readNumber | Nothing => pure Nothing
               pure (Just (num1_ok, num2_ok))
