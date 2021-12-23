import Data.List
import System.IO

-- Generate a list where...
-- starting with range 1-10
-- multiply each value by 10
-- but only if the value multiplied by 10 is less than or equal to 50
listTimes10 = [x * 10 | x <- [1..10], x * 10 <= 50]

-- More convoluted example
-- In range 1-500, return the value itself
-- But only if x mod 9 = 0 (x is divisible evenly by 9)
-- AND only if x mod 13 = 0 as well
divisBy9and13 = [x | x <- [1..500], x `mod` 9 == 0, x `mod` 13 == 0]

-- Sort a list
sortedList = sort [9,1,8,3,4,7,6]

-- Merge two lists with an operator
sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]
-- [1, 2,  3,  4,  5]
--  +  +   +   +   +
-- [6, 7,  8,  9, 10]
-- =
-- [7, 9, 11, 13, 15]

-- Filter by some condition
listBiggerThan5 = filter (> 5) [2,3,4,5,11,13,17,19,23,29]

-- Filter on infinite list
evensUpTo20 = takeWhile (<= 20) [2,4..]
-- Haskell knows to stop once a tested value fails the filter

-- Reduce a list to a single value by performing an operation on each iteration
-- Starting with a value of 1
-- Multiply (*) that value by each item in the list
multOfList = foldl (*) 1 [2,3,4,5]
-- Returns 120

-- Do same thing as above, but start from the end of the list and work backward
multOfList2 = foldr (*) 1 [2,3,4,5]
-- Returns 120 again in this case because, when multiplying numbers in a list,
-- it doesn't matter the order
