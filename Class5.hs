percent :: Int -> Int -> Float
percent m n = (fromIntegral m / fromIntegral n) * 100

--TuplesLists page 9
minAndMax :: Int -> Int -> (Int, Int)
minAndMax x y
  | x < y   = (x,y)
  | otherwise = (y,x)

--ListComprehension slide 13
addOrdPairs :: [(Int,Int)] -> [Int]
addOrdPairs pairs = [ x+y | (x,y) <- pairs, x <= y]
--returns the sum of pairs whose first term(x) is <= the second term (y)

--ListComprehension Slide 14
allEven :: [Int] -> Bool
--allEven xs = [True | x <- xs] == [x `mod` 2 == 0 | x <- xs]
allEven xs = xs == [x | x <- xs, x `mod` 2 == 0]
--takes a list of int's and returns whether every item is even

--ListComprehension Slide 15
divisors :: Int -> [Int]
divisors n = [ x | x <- [1..n], n `mod` x == 0]
--checks all numbers in [1..n] to see if n can evenly be divided into x for prime number-age

isPrime :: Int -> Bool
isPrime n = [1,n] == divisors n
--checks list of 1 and n equals to divisors's function of inputted n

find :: Char -> [(Char,Int)] -> [Int]
find key table = [ v | (k,v) <- table, key == k]