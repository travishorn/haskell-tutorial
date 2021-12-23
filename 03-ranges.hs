import Data.List
import System.IO

-- Create a range
zeroToTen = [0..10]

-- Even values only
evenList = [2,4..20]

-- List of chars
letterList = ['A'..'Z']

-- Every other letter. Notice that even though Z would never be included in
-- this list, we can still use it while defining the list to indicate the end
-- of the list.
letterList2 = ['A','C'..'Z']
-- Returns "ACEGIKMOQSUWY"

-- Infinite list. Haskell is lazy so it doesn't actually calculate values until
-- they're needed/called
infinPow10 = [10,20..]

-- Value at index 50 of above list
infinVal = infinPow10 !! 50

-- Repeat a value a number of times.
many2s = take 10 (repeat 2)
-- [2,2,2,2,2,2,2,2,2,2]

-- Can also use replicate to do same thing
many3s = replicate 10 3
-- [3,3,3,3,3,3,3,3,3,3]

-- Replicate the values in a list indefinitely
cycle5 = cycle [1,2,3,4,5]

-- Take first 10 in the above list
cycleList = take 10 cycle5

-- Written without constant
cycleList2 = take 10 (cycle [1,2,3,4,5])

-- Apply operation to all items in list
listTimes2 = [x * 2 | x <- [1..10]]
