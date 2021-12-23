import Data.List
import System.IO

-- Higher order functions
-- Passing functions as if they were variables

times4 :: Int -> Int
times4 x = x * 4

-- `map` applies some function to every item in a list
-- Accepts two arguments: the function to apply, and the list
listTimes4 = map times4 [1,2,3,4,5]
-- [4,8,12,16,20]

-- To do this another, more verbose way
-- Take the first value (x) and pass it into times4, store the result away
-- Then take the rest of the values (xs) and pass them into multBy4 (back into
-- itself), which will do the process again (recursion) until all list itmes
-- have been operated on (in this case, times4'ed)
-- The resulting list is returned
multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs

-- Another example. This concept of x:xs and recursion are maybe the most
-- confusing parts of Haskell for new learners.

-- Accept two  Lists of Chars (basically, Strings) and return a Bool (t/f)
areStringsEq :: [Char] -> [Char] -> Bool

-- If two empty lists are passed in, they are equal so return True
areStringsEq [] [] = True

-- Break each String into two parts: the first letter and the rest
-- Return True if x (first letter in first list) is equal to y (first letter in
-- second list) AND the rest of the first list is equal to the rest of the
-- second list.
areStringsEq (x:xs) (y:ys) = x == y && areStringsEq xs ys

-- If anything else is passed in (not two empty lists and not two strings),
-- return False
areStringsEq _ _ = False
