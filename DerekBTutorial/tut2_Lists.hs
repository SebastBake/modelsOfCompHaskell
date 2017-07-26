-- Written to learn Haskell for COMP30026-Models of Computation, Unimelb
-- This is code from a haskell tutorial at https://www.youtube.com/watch?v=02_H3LjqMr8
-- start compiler with `ghci`
-- load using `:l <filename>`
-- run using `:r`


import Data.List
import System.IO

primeList = [3,5,7,11]                      -- basic define a list
secondPrime = morePrimes2 !! 1              -- retrieve a value
morePrimes = primeList ++ [13,17,19,23,29]  -- concatenate
multList = [[3,5,7],[11,13,17]]             -- list of lists
favNums = 3 : 7 : 8:[]                      -- append numbers into list
morePrimes2 = 2 : morePrimes                -- append numbers into list
zeroToTen = [0..10]
evenList = [2,4..20]
letterList = ['A','C'..'Z']
infinPow10 = [10,20..]

revPrime = reverse morePrimes2
sortedList = sort [9,1,8,3,4,7,6]

firstPrime = head morePrimes2       -- first val
lastPrime = last morePrimes2        -- last val
primeTail = tail morePrimes2        -- all but first
primeInit = init morePrimes2        -- all but last
first3Primes = take 3 morePrimes2   -- first 3
removedPrimes = drop 3 morePrimes2  -- all but first 3

isListEmpty = null morePrimes2
is7InList = 7 `elem` morePrimes2
is7InList2 = elem 7 morePrimes2

maxPrime = maximum morePrimes2
minPrime = minimum morePrimes2
sumPrimes = sum morePrimes2
prodPrimes = product favNums
lenPrime = length morePrimes2

many2s = take 10 (repeat 2)
many3s = replicate 10 3
cycleList = take 10 (cycle [1,2,3,4,5])

-- `|` is a foreach operator, after the array is a filter (generates a list)
listTimes2 = [x * 2 | x <- [1..10]]
listTimes3 = [x * 3 | x <- [1..20], x*3 <= 50]
divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]

-- Fancy operations
sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]
listBiggerThen5 = filter (>5) sumOfLists
evensUpTo20 = takeWhile (<=20) [2,4..] -- A while loop
multOfList = foldl (*) 1 [2,3,4,5]
multTable = [[x * y | y <- [1..10]] | x <- [1..10]]








