import Data.List
import System.IO

-- The $ operator
-- Anything that comes after it takes precedent over anything that comes before
-- it.

data Shape = Rectangle Float Float Float Float
  deriving Show

area :: Shape -> Float

-- To get the area, we could write a function this way:
-- area (Rectangle x y x2 y2) = (abs (x2 - x)) * (abs (y2 - y))

-- Notice the parenthesis helping contain the values passed into `abs`
-- You can eliminate the parenthesis with a `$` in the right position.
area (Rectangle x y x2 y2) = (abs $ x2 - x) * (abs $ y2 - y)

-- The . operator
-- Chain functions to pass output on the right to the input on the left

sumValue = putStrLn (show (1 + 2))
-- Equals 3

-- Takes the output of `show $ 1 + 2` and passes it to putStrLn
sumValue2 = putStrLn . show $ 1 + 2
-- Equals 3

-- In the real world, this example wouldn't use `.` though. You'd probably just
-- write it like this:
sumValue3 = print (1 + 2)