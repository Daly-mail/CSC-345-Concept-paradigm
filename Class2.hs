x :: Int
x = 3

y :: Integer
y = y + 1

s :: String
s = "Hello"

-- a fn to test whether three Integers are equal

threeEqual :: Integer -> Integer -> Integer -> Bool
threeEqual  x y z = x == y && y == z

fourEqual :: Integer -> Integer -> Integer -> Integer -> Bool
fourEqual w x y z = w == x && x == y && y == z