x :: Int
x = 3

y :: Integer
y = y + 1

s :: String
s = "Hello"

-- a fn to test whether three Integers are equal

threeEqual :: Integer -> Integer -> Integer -> Bool
threeEqual  x y z = x == y && y == z

--fourEqual :: Integer -> Integer -> Integer -> Integer -> Bool
--fourEqual w x y z = (threeEqual w x y) && y == z

exor :: Bool -> Bool -> Bool
exor b1 b2 = b1 /= b2

twoMax :: Integer -> Integer -> Integer
twoMax x y = if x >= y then x else y

threeMax :: Integer -> Integer -> Integer -> Integer
threeMax x y z = twoMax (twoMax x y) z

--threeMax' :: Integer -> Integer -> Integer -> Integer
--threeMax' x y z = if x >= y then (twoMax x z) else (twoMax y z)

threeMaxWithGuard :: Integer -> Integer -> Integer -> Integer
threeMaxWithGuard x y z 
  | x >= y = twoMax x z
  | y >= x = twoMax y z

