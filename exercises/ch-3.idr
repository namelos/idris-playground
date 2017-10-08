length' : List a -> Nat
length' [] = 0
length' (x :: xs) = 1 + length' xs

reverse' : List a -> List a
reverse' [] = []
reverse' [x] = [x]
reverse' (x :: xs) = reverse' xs ++ [x]
