-- Single line comment

{-
 - Multi-line comment
-}

-- To use this file, run the REPL with `ghci`
-- Then load the module with `:l [filename]`
-- Like `:l 00-data-types.hs`
-- With module loaded, you can see value of constants by typing their name
-- Like `always5` will print `5`
-- Any time you change the module while it's loaded, reload with `:r`

import Data.List
import System.IO

-- Int min: -2^63 max: 2^63

minInt = minBound :: Int
maxInt = maxBound :: Int

-- Integer max: as big as your memory can hold (HUGE)

-- Float - single precision floating point number

-- Double - More common 
-- When dealing with floating point, make sure to start with 0.x

bigFloat        = 3.99999999999 + 0.00000000005

-- Bool - True / False

-- Char - single quotes '

-- Tuples - lists of many diff data types. Usually two values

always5 :: Int
always5 = 5
