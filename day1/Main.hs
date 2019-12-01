
type Mass = Integer
type Fuel = Integer

calcFuel :: Mass -> Fuel
calcFuel m = (div m 3) - 2

foo :: String -> String
foo str =  show . sum $ calcFuel . read <$> words str

main :: IO ()
main = interact foo
