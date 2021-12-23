import Data.List
import System.IO

-- Guards provide different actions based on different conditions
-- "conditional logic"

isOdd :: Int -> Bool

-- If the value of n mod 2 is 0 then return False (if even, return false)
-- Otherwise, return True (only other possibility is odd)
isOdd n
  | n `mod` 2 == 0 = False
  | otherwise = True

-- Shorter version of the above, but doesn't showcase guards
isOdd2 n = n `mod` 2 /= 0

-- These next two expressions are not in the video, but they are further
-- optimizations for the same result
isOdd3 n = odd n
isOdd4 = odd

whatGrade :: Int -> String

-- Similar to a "switch" statement or "case/when"
whatGrade age
  | age < 5                   = "Too young for school"
  | (age >= 5) && (age < 7)   = "Kindergarten"
  | (age >= 7) && (age < 13)  = "Elementary School"
  | (age >= 13) && (age < 15) = "Middle School"
  | (age >= 15) && (age < 19) = "High School"
  | otherwise = "College"

-- `where` keeps us from having to repeat a calculation over and over again
batAvgRating :: Double -> Double -> String

-- We can use `avg` in each case and then define it at the end with `where`
batAvgRating hits atBats
  | avg <= 0.200 = "Terrible"
  | avg <= 0.250 = "Average"
  | avg <= 0.280 = "Pretty good"
  | otherwise = "Superstar"
  where avg = hits / atBats

-- The function in `where` can take variables from each case
-- (This expression is not in Derek Banas's video. It's just another example.)
isLeapYear :: Integer -> Bool
isLeapYear year
  | isDivisibleBy 400 = True
  | isDivisibleBy 100 = False
  | isDivisibleBy   4 = True
  | otherwise         = False
  where isDivisibleBy x = mod year x == 0