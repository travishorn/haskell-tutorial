import Data.List
import System.IO

-- Access list items in interesting ways

-- Accept a List of Ints and return a String
getListItems :: [Int] -> String

-- If the passed in List is empty, return String saying so
getListItems [] = "Your list is empty"

-- Otherwise...

-- If there's only 1 item, do this
-- `show` coerces a value into a String. This allows us to concatenate it with
-- another string using `++`
getListItems (x:[]) = "Your list starts with " ++ show x

-- The above could be rewritten as...
-- getListItems [x] = "Your list starts with " ++ show x

-- Otherwise, if there are 2 items, do this
-- Get the first and second items from the list
getListItems (x:y:[]) = "Your list contains " ++ show x ++ " and " ++ show y

-- The above could be rewritten as...
-- getListItems [x,y] = "Your list contains " ++ show x ++ " and " ++ show y

-- If none of the above patterns match, do this
-- Using x:xs like this is common in Haskell
-- x is the first item
-- xs is everything else
getListItems (x:xs) = "The first item is " ++ show x ++ " and the rest are " ++
  show xs

-- `as` pattern
-- Get the whole string that was passed in with a const before the @ sign (in
-- this case, we store it as `all`
getFirstItem :: String -> String
getFirstItem [] = "Empty string"
getFirstItem all@(x:xs) = "The first letter in " ++ all ++ " is " ++ [x]
-- getFirstItem "Hello" returns "The first letter in Hello is H"
