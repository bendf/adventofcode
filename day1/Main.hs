import Data.List

type Mass = Integer
type Fuel = Integer


calcFuel :: Mass -> Fuel
calcFuel mass = (div mass 3) - 2

totalFuel :: Mass -> Fuel
totalFuel mass = sum . tail . takeWhile (>0) $ iterate calcFuel mass

partOne :: String -> String
partOne str =  show . sum $ calcFuel . read <$> words str

partTwo :: String -> String
partTwo str = show . sum $ totalFuel . read <$> words str

result :: (String -> String) -> (String -> String) -> String -> String
result f g str = intercalate "\n" [ "Part One: " ++ (f str), "Part Two: " ++ (g str)]


main :: IO ()
main = interact $ result partOne partTwo
