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
allEven xs = [True | x <- xs] == [x `mod` 2 == 0 | x <- xs]
--takes a list of int's and returns whether every item is even

