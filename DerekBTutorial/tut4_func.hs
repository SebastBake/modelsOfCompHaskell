-- Written to learn Haskell for COMP30026-Models of Computation, Unimelb
-- This is code from a haskell tutorial at https://www.youtube.com/watch?v=02_H3LjqMr8
-- start interactive compiler with `ghci`
-- load using `:l <filename>`
-- run using `:r`

-- Compile using `ghc --make tut4_func.hs`


import Data.List
import System.IO

main = do
    putStrLn "Enter your name: "
    name <- getLine
    putStrLn ("Your name is " ++ name)
    putStrLn ("Bye!")

-- Define a type declaration for a function... This specifies io types
    -- funcName param1 param2 = operations (Returned Value)
addMe :: Int -> Int -> Int

-- Definition of function operations defined like so:
    -- funcName param1 param2 = operations (Returned Value)
addMe x y = x + y

-- example for tuples
addTuple :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuple (x1,y1) (x2,y2) = (x1+x2, y1+y2)

-- example switch function
-- You can perform different actions based on values
whatAge :: Int -> String
whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You're an adult"
whatAge x = "Nothing Important"

-- recursion
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Use guards to define the school to output
whatGrade :: Int -> String
whatGrade age
	| (age >= 5) && (age <= 6) = "Kindergarten"
	| (age > 6) && (age <= 10) = "Elementary School"
	| (age > 10) && (age <= 14) = "Middle School"
	| (age > 14) && (age <= 18) = "High School"
    | otherwise = "Go to college"
    
-- The where clause keeps us from having to repeat a calculation
batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
	| avg <= 0.200 = "Terrible Batting Average"
	| avg <= 0.250 = "Average Player"
	| avg <= 0.280 = "Your doing pretty good"
	| otherwise = "You're a Superstar"
    where avg = hits / atBats 
    
-- You can access list items by separating letters with : or get everything but
-- the first item with xs
getListItems :: [Int] -> String
getListItems [] = "Your list is empty"
getListItems (x:[]) = "Your list contains " ++ show x
getListItems (x:y:[]) = "Your list contains " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "The first item is " ++ show x ++ " and the rest are " ++ show xs

-- We can also get values with an As pattern
getFirstItem :: String -> String
getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The first letter in " ++ all ++ " is " ++ [x]


-- ---------- CONDITIONALS ----------
 
-- Comparison Operators : < > <= >= == /=
-- Logical Operators : && || not
 
-- Every if statement must contain an else
doubleEvenNumber y = 
	if (y `mod` 2 /= 0)
		then y
		else y * 2
		
-- We can use case statements 
getClass :: Int -> String
getClass n = case n of
	5 -> "Go to Kindergarten"
	6 -> "Go to elementary school"
	_ -> "Go some place else"