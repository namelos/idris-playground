import Data.Vect

length' : Vect n elem -> Nat
length' [] = 0
length' (x :: xs) = 1 + length' xs

length'' : Vect n elem -> Nat
length'' {n} xs = n

createEmpties : Vect n (Vect 0 a)
createEmpties {n = Z} = []
createEmpties {n = (S k)} = [] :: createEmpties
