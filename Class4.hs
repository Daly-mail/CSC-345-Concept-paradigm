x :: Int
x = 5

y :: Double
y = 2.3

z :: Integer
z = 5

-- Exor function
exor :: Bool -> Bool -> Bool
exor x y = x /= y

-- Test cases for exor
test_exor1, test_exor2, test_exor3, test_exor4 :: Bool
test_exor1 = (exor True True) == False
test_exor2 = (exor True False) == True
test_exor3 = (exor False True) == True
test_exor4 = (exor False False) == False


-- TestingRecursion Slide 5
twoMax :: Integer -> Integer -> Integer
twoMax x y = if x >= y then x else y

threeMax :: Integer -> Integer -> Integer -> Integer
threeMax x y z = max x (max y z)

test_threeMax1, test_threeMax2, test_threeMax3 :: Bool
test_threeMax1 = (threeMax 10 9 8) == 10
test_threeMax2 = (threeMax 9 (-5) 8) == 9
test_threeMax3 = (threeMax 1 1 1) == 1

-- TestingRecursion Slide 6&7
-- oh gawddd
fac :: Int -> Int
fac n 
  | n == 0 = 1              -- base case
  | n > 0 = fac (n-1) * n   -- recurseve step
  | n < 0 = (-1)

-- TestingRecursion Slide 12
-- Example: A function that sums the factorials
sumFacs :: Int -> Int
sumFacs n
  | n == 0    = 1
  | n > 0     = sumFacs (n - 1) + fac n


-- testingRecursion Slide 13
rangeProduct :: Int -> Int -> Int
rangeProduct m n
  | m == n-1  = m * n  -- base case
  | m < n     = m * (rangeProduct (m + 1) n) -- recursive case
