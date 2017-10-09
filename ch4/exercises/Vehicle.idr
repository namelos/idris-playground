data PowerSource = Petrol | Pedal | Electric

data Vehicle : PowerSource -> Type where
     Bicycle : Vehicle Pedal
     Unicycle : Vehicle Pedal
     Motorcycle : (fuel : Nat) -> Vehicle Petrol
     Car : (fuel : Nat) -> Vehicle Petrol
     ElectricCar : (battery : Nat) -> Vehicle Electric
     Bus : (fuel : Nat) -> Vehicle Petrol
     Tram: (battery : Nat) -> Vehicle Electric

wheels : Vehicle power -> Nat
wheels (Motorcycle fuel) = 2
wheels (ElectricCar battery) = 4
wheels (Tram battery) = 8
wheels Unicycle = 1
wheels Bicycle = 2
wheels (Car fuel) = 4
wheels (Bus fuel) = 4

refuel : Vehicle Petrol -> Vehicle Petrol
refuel (Motorcycle fuel) = Motorcycle 50
refuel (Car fuel) = Car 100
refuel (Bus fuel) = Bus 200
