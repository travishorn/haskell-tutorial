import Data.List
import System.IO

-- Lists are singly linked, very important in Haskell. Only able to add to the
-- front of any list

primeNumbers = [3,5,7,11]

-- Concatenate list

morePrimes = primeNumbers ++ [13,17,19,23,29]

-- Use a cons operator to construct a list. Very simple but very important
-- : between each list item. Empty list at end
-- It's a way to combine numbers into a list. Some people forget and it
-- confuses them

favNums = 2 : 7 : 21 : 66 : []

-- Lists inside of lists
multList = [[3,5,7],[11,13,17]]

-- Add items to front of list with cons operator
morePrimes2 = 2 : morePrimes

lenPrimes = length morePrimes2

-- Reverse list
revPrime = reverse morePrimes2

-- Tell is list is empty
isListEmpty = null morePrimes2

-- Get value at specific index in list. Zero indexed
secondPrime = morePrimes2 !! 1
-- Returns 3

-- Get first value
firstPrime = head morePrimes

-- Get last value
lastPrime = tail morePrimes

-- Get everything BUT the last value
primeInit = init morePrimes2

-- First three values
first3Primes = take 3 morePrimes2

-- Return values left after removing specific values
removedPrimes = drop 3 morePrimes2
-- Returns everything except for the first 3 values.
-- So: [7,11,13,17,19,23,29]

-- Does list contain an item?
is7InList = elem 7 morePrimes2
is7InList2 = 7 `elem` morePrimes2

-- Min and max values in list
minPrime = minimum morePrimes2
maxPrime = maximum morePrimes2

-- Sum of list
sumOfPrimes = sum morePrimes2

-- Product (multiply all list items)
prodPrimes = product morePrimes2
