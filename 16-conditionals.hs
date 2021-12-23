import Data.List
import System.IO

{-
 - Comparison operators
 - <    less than
 - >    greater than
 - <=   less than or equal to
 - >=   grater than or equal to
 - ==   equal
 - /=   not equal
 -
 - Logical operators
 - &&   and
 - ||   or
 - not  not
-}

-- Can use if statements in Haskell but they're not common

-- Accept a number. If it's odd then return the number itself. Else, return the
-- number multiplied by 2.
doubleEvenNumber x =
  if odd x
    then x
    else x * 2

-- Case statement (similar to switch pattern)
getClass :: Int -> String

-- The underscore is the "catch-all". If it doesn't meet any of the other
-- criteria, return that value
getClass n = case n of
  5 -> "Go to kindergarten"
  6 -> "Go to elementary school"
  _ -> "Go away"
