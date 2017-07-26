-- Written to learn Haskell for COMP30026-Models of Computation, Unimelb
-- This is code from a haskell tutorial at https://www.youtube.com/watch?v=02_H3LjqMr8
-- start compiler with `ghci`
-- load using `:l <filename>`
-- run using `:r`


import Data.List
import System.IO

randTuple = (1,"Random tuple")
bobSmith = ("Bob Smith",52)
bobsName = fst bobSmith
bobsAge = snd bobSmith

names = ["Bob","Mary","Tom"]
addresses = ["123 Main","234 North","567 South"]
namesNAddress = zip names addresses 

