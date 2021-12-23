import Data.List
import System.IO

-- Enumerated types
-- When you want to define a list of possible types

data BaseballPlayer = Pitcher
                    | Catcher
                    | Infielder
                    | Outfielder
                    deriving Show

-- Could also write on one line like
-- data BaseballPlayer = Pitcher | Catcher | Infielder | Outfielder deriving Show

-- deriving Show enables you to print it out like a string

-- Type definition for barryBonds
-- Accepts a BaseballPlayer and returns a Bool
barryBonds :: BaseballPlayer -> Bool

-- Function definition for barryBonds
-- We pass Outfielder. It's accepted because barryBonds's type definition
-- defines that it accepts a BaseballPlayer. At the top you can see that
-- BaseballPlayer does contain Outfielder as a valid option
-- Sets the value to True
barryBonds Outfielder = True

-- Call the function and store it in barryInOF
barryInOF = barryBonds Outfielder
-- Calling `barryBonds Outfielder` returns `True`
