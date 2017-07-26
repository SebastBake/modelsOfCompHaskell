-- Written to learn Haskell for COMP30026-Models of Computation, Unimelb
-- This is code from a haskell tutorial at https://www.youtube.com/watch?v=02_H3LjqMr8
-- start compiler with `ghci`
-- load using `:l <filename>`
-- run using `:r`


import Data.List
import System.IO

-- Data types:
    -- Int: -2^63 < Int < 2^64
    -- Integer: unbounded
    -- Double: 11 points of precision
    -- Bool: True False
    -- Char: 'a'
    -- Tuple: list of values

-- Declare variable
always5 :: Int
always5 = 5

-- Sum a bunch of nums
sumOfNums = sum [1..1000]

-- modulo operator
modEx = mod 5 4

-- boolean operators
trueAndFalse = true && False
trueOrFalse = true || False
notTrue = not(true)

-- add negative weird thing
addNeg = 5 + (-4) -- compiler confusion if negated number not in brackets

-- sqrt (docs using :t sqrt)
num9 = 9 :: Int
sqrt9 = sqrt (fromIntegral num9)

-- Built in functions
piVal = pi
epow9 = exp 9
logof9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.99
roundVal = round 9.99
ceilingVal = ceil 9.99
floorVal = floor 9.99
