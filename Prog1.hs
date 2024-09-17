{- ##################################
   Name: Liam Daly
   Date: Sept 17th
   Homework Assignment: Homework 1 
   ################################## -}

module Prog1 where


isThreeDigitPositive :: Int -> Bool  
isThreeDigitPositive n = n >= 100 && n <= 999


dividesEvenly :: Integer -> Integer -> Bool
dividesEvenly x y = x `mod` y == 0


middle :: Int -> Int -> Int -> Int
middle x y z = x + y + z - maximum [x, y, z] - minimum [x, y, z]


nor :: Bool -> Bool -> Bool
nor x y = not (x || y)


f2c :: Float -> Float
f2c f = (f - 32) * (5 / 9)


floorDecimal :: Float -> Float
floorDecimal x = fromIntegral (floor x)


letterGrade :: Integer -> String
letterGrade n
    | n >= 93   = "A"
    | n >= 90   = "A-"
    | n >= 87   = "B+"
    | n >= 83   = "B"
    | n >= 80   = "B-"
    | n >= 77   = "C+"
    | n >= 73   = "C"
    | n >= 70   = "C-"
    | n >= 67   = "D+"
    | n >= 63   = "D"
    | n >= 60   = "D-"
    | otherwise = "F"


averageThree :: Integer -> Integer -> Integer -> Float
averageThree x y z = (fromIntegral (x + y + z)) / 3


howManyAboveAverage :: Integer -> Integer -> Integer -> Integer
howManyAboveAverage x y z =
    let avg = averageThree x y z
        values = [fromIntegral x, fromIntegral y, fromIntegral z]
    in fromIntegral (length (filter (> avg) values))

