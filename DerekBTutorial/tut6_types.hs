-- Written to learn Haskell for COMP30026-Models of Computation, Unimelb
-- This is code from a haskell tutorial at https://www.youtube.com/watch?v=02_H3LjqMr8
-- start interactive compiler with `ghci`
-- load using `:l <filename>`
-- run using `:r`

-- Compile using `ghc --make tut6_types.hs`

import Data.List
import System.IO

-- ---------- ENUMERATION TYPES ----------
-- Used when you want a list of possible types
-- Provide name, a list and then Show converts into a String for printing
 
data BaseballPlayer = Pitcher
					| Catcher
					| Infield
					| Outfield
				deriving Show
 
barryBonds :: BaseballPlayer -> Bool
barryBonds Outfield = True
 
barryInOF = print(barryBonds Outfield)
 
-- ---------- CUSTOM TYPES ----------
-- You can store multiple values sort of like a struct to create custom types
data Customer = Customer String String Double
	deriving Show
	
-- Define Customer and its values
tomSmith :: Customer
tomSmith = Customer "Tom Smith" "123 Main St" 20.50
 
-- Define how we'll find the right customer (By Customer) and the return value
getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b
 
tomSmithBal = print (getBalance tomSmith)
 
-- We can define a type with all possible values
data RPS = Rock | Paper | Scissors
 
shoot :: RPS -> RPS -> String
shoot Paper Rock = "Paper Beats Rock"
shoot Rock Scissors = "Rock Beats Scissors"
shoot Scissors Paper = "Scissors Beat Paper"
shoot Scissors Rock = "Scissors Loses to Rock"
shoot Paper Scissors = "Paper Loses to Scissors"
shoot Rock Paper = "Rock Loses to Paper"
shoot _ _ = "Error"
 
-- We could define 2 versions of a type
-- First 2 floats are center coordinates and then radius for Circle
-- First 2 floats are for upper left hand corner and bottom right hand corner 
-- for the Rectangle
data Shape = Circle Float Float Float | Rectangle Float Float Float Float
	deriving (Show)
 
-- :t Circle = Float -> Float -> Float -> Shape

-- ---------- TYPE CLASSES ----------
-- Num, Eq, Ord and Show are type classes
-- Type classes correspond to sets of types which have certain operations 
-- defined for them.
-- Polymorphic functions, which work with multiple parameter types, define
-- the types it works with through the use of type classes
-- For example (+) works with parameters of the type Num
-- :t (+) = Num a => a -> a -> a
-- This says that for any type a, as long as a is an instance of Num, + can take
-- 2 values and return an a of type Num

-- Create an Employee and add the ability to check if they are equal
data Employee = Employee { name :: String,	
						   position :: String,
						   idNum :: Int 
						   } deriving (Eq, Show)
						   
samSmith = Employee {name = "Sam Smith", position = "Manager", idNum = 1000}
pamMarx = Employee {name = "Pam Marx", position = "Sales", idNum = 1001}
 
isSamPam = samSmith == pamMarx
 
-- We can print out data because of show
samSmithData = show samSmith
 
-- Make a type instance of the typeclass Eq and Show
data ShirtSize = S | M | L
 
instance Eq ShirtSize where
	S == S = True
	M == M = True
	L == L = True
	_ == _ = False
 
instance Show ShirtSize where
	show S = "Small"
	show M = "Medium"
	show L = "Large"
	
-- Check if S is in the list
smallAvail = S `elem` [S, M, L]
 
-- Get string value for ShirtSize
theSize = show S
 
-- Define a custom typeclass that checks for equality
-- a represents any type that implements the function areEqual
class MyEq a where
	areEqual :: a -> a -> Bool
	
-- Allow Bools to check for equality using areEqual
instance MyEq ShirtSize where
	areEqual S S = True
	areEqual M M = True
	areEqual L L = True
	areEqual _ _ = False
 
newSize = areEqual M M