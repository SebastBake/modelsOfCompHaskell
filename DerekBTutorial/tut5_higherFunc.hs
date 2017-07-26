-- Written to learn Haskell for COMP30026-Models of Computation, Unimelb
-- This is code from a haskell tutorial at https://www.youtube.com/watch?v=02_H3LjqMr8
-- start interactive compiler with `ghci`
-- load using `:l <filename>`
-- run using `:r`

-- Compile using `ghc --make tut4_func.hs`

import Data.List
import System.IO

times4 :: Int -> Int
times4 x = x * 4

-- PASSING A FUNCTION INTO A FUNCTION
-- (Int -> Int) says we expect a function Int -> int
use3 :: (Int -> Int) -> Int
use3 func = func 3 -- simply passes 3 into whichever function is passed into it
num3Times4 = use3 times4

-- RETURNING A FUNCTION FROM A FUNCTION
getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y -- We can pass in the values to the function
adds3 = getAddFunc 3 -- We could also get a function that adds 3 for example
fourPlus3 = adds3 4


