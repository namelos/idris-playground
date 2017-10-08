-- Enumeration types

data Bool = False
          | True

data Direction = North
               | East
               | South
               | West

turnClockwise : Direction -> Direction
turnClockwise North = East
turnClockwise East = South
turnClockwise South = West
turnClockwise West = North

eastClockwise : Direction
eastClockwise = turnClockwise East

-- Union types

data Shape = Triangle Double Double
           | Rectangle Double Double
           | Circle Double

area : Shape -> Double
area (Triangle base height) = 0.5 * base * height
area (Rectangle length height) = length * height
area (Circle radius) = pi * radius * radius

%name Shape shape, shape1, shape2

cicleWithRadius2Area : Double
cicleWithRadius2Area = area $ Circle 2

-- Recursive types

data Nat' = Z | S Nat'

data Picture = Primitive Shape
             | Combine Picture Picture
             | Rotate Double Picture
             | Translate Double Double Picture

%name Picture pic, pic1, pic2

rectangle : Picture
rectangle = Primitive (Rectangle 20 10)

circle : Picture
circle = Primitive (Circle 5)

triangle : Picture
triangle = Primitive (Triangle 10 10)

testPicture : Picture
testPicture = Combine (Translate 5 5 rectangle)
              (Combine (Translate 35 5 circle) (Translate 15 25 triangle))

pictureArea : Picture -> Double
pictureArea (Primitive shape) = area shape
pictureArea (Combine pic pic1) = pictureArea pic + pictureArea pic1
pictureArea (Rotate x pic) = pictureArea pic
pictureArea (Translate x y pic) = pictureArea pic

testPictureArea : Double
testPictureArea = pictureArea testPicture

-- Generic data types

data Biggest = NoTriangle
             | Size Double

data DivResult = DivByZero
               | Result Double

safeDivide : Double -> Double -> DivResult
safeDivide x 0.0 = DivByZero
safeDivide x y = Result (x / y)
