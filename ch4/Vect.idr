import Data.Vect

append : Vect n elem -> Vect m elem -> Vect (n + m) elem
append [] ys = ys
append (x :: xs) ys = x :: append xs ys

zip' : Vect n a -> Vect n b -> Vect n (a, b)
zip' [] ys = []
zip' (x :: xs) (y :: ys) = (x, y) :: zip' xs ys

tryIndex : Integer -> Vect n a -> Maybe a
tryIndex {n} i xs = case integerToFin i n of
                         Nothing => Nothing
                         (Just idx) => Just (index idx xs)
