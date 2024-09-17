percent :: Int -> Int -> Float
percent m n = (fromIntegral m / fromIntegral n) * 100

--TuplesLists page 9
minAndMax :: Int -> Int -> (Int, Int)
minAndMax x y
  | x < y   = (x,y)
  | otherwise = (y,x)

  