import Data.List
import System.IO

-- Tuples are a little like lists. Unlike lists, they can store multiple
-- different datatypes.

randTuple = (1,"Random Tuple")

-- The most common format of a tuple is a "tuple pair"
bobSmith = ("Bob Smith",52)

-- Get the first value in a tuple
bobsName = fst bobSmith

-- Get the second value in a tuple
bobsAge = snd bobSmith

-- Using zip. Very important
-- Combine two different lists into a list of tuple pairs
names = ["Bob", "Mary", "Tom"]
addresses = ["123 Main", "234 North", "567 South"]

namesAndAddresses = zip names addresses
-- Returns [("Bob", "123 Main"), ("Mary", "234 North"), ("Tom", "567 South")]
