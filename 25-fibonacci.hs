import Data.List
import System.IO

-- Fibonacci Sequence
-- 1, 1, 2, 3, 5, 8, ... and so on

fib = 1 : 1 : [a + b | (a, b) <- zip fib (tail fib)]

-- The `:` function concatenates items into a list
-- List starts with [1,1] and then the third thing we are concatenating is a
-- is a big operation.
-- Starting from the right you can see it calls `zip` with two arguments:
-- fib and (tail fib) which is the second to last value and the last value
-- It takes those values and passes them to the left as a and b. Then a and b
-- are added together. The resulting value is the next item concatenated to the
-- list.

-- Haskell will lazily compute the list. It won't do anything by default until
-- it needs to. So there's not an actual infinite list in memory. Instead it
-- will calculate the necessary values when called

-- Get the item at index 300 of fib (huge number)
fib300 = fib !! 300

-- Get the first 20 numbers in the Fibonacci sequence.
fibFst20 = take 20 fib
