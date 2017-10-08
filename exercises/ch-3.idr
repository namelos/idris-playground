import Data.Vect

length' : List a -> Nat
length' [] = 0
length' (x :: xs) = 1 + length' xs

reverse' : List a -> List a
reverse' [] = []
reverse' [x] = [x]
reverse' (x :: xs) = reverse' xs ++ [x]

map' : (a -> b) -> List a -> List b
map' f [] = []
map' f (x :: xs) = f x :: map' f xs

map'' : (a -> b) -> Vect n a -> Vect n b
map'' f [] = []
map'' f (x :: xs) = f x :: map'' f xs
