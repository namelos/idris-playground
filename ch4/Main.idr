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

cicleWithRadius2Area : Double
cicleWithRadius2Area = area $ Circle 2
