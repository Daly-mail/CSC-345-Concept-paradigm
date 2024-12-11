-- #Final Exam Review Attempt 1

-- Things to put on cheatsheet:
-- let outputList = [ <outputFunction> | <inputList>, <predicate> ]
-- 


-- List comprehension cheat sheet
-- let outputList = [ <outputFunction> | <inputList>, <predicate>, ... ]

dupEveryOther :: [a] -> [a]
dupEveryOther xs = [x | (x,i) <- zip xs [0..], let ys = if odd i then [x, x] else [x], x <- ys]

-- Recursion but NO list comprehension

dupEveryOtherRec :: [a] -> [a]
dupEveryOtherRec xs 
  | if x = [] = "empty list" --BC