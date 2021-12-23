import Data.List
import System.IO

-- Powers of three
--            Op to do ea. item   Assign item to var   List to loop
-- powList = [3^n |               n <-                 [1..10]]

powList = [3^n | n <- [1..10]]

-- Generate a multiplication table by multiplying items in different lists
-- Generates a list of lists. Gives us x times y where y is 1-10 and x is also
-- 1-10.
multTable = [[x * y | y <- [1..10]] | x <- [1..10]]
{-
 - Returns [
 -   [1,2,3, 4, 5, 6, 7, 8, 9,10],
 -   [2,4,6, 8,10,12,14,16,18,20],
 -   [3,6,9,12,15,18,21,24,27,30]
 -   ..snip..
 - ]
 -}
