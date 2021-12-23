import Data.List
import System.IO

-- Module is a collection of functions that you can load into your program
-- Import a module with `import` (see the first 2 lines above)

-- Export a module like so

-- The word `module`
-- followed by the module's name (title case)
-- followed by a list of functions to export in parenthesis
-- followed by the word `where`
module SampFunctions (add1, add2) where

-- Followed by the definition of all the functions to export

add1 :: Int -> Int
add1 x = x + 1

add2 :: Int -> Int
add2 x = x + 2

-- The name of this file should be SampFunctions.hs. Note the capital first
-- letter. To import this module in another file, place it in the same directory
-- and write:
-- import SampFunctions

-- Note: The actual name of the file you're reading right now isn't
-- SampleFunctions.hs because this is just a guide and it makes more sense to
-- name it after the "lesson."

-- You can also give modules a hierarchical structure. For example, you can
-- create a directory called "Geometry" (note the captial G) and place a few
-- modules inside. The filesnames of these modules could be something like
-- Sphere.hs, Cube.hs, etc. When defining the module, name it like so:
-- module Geometry.Sphere (a, b, c) where`

-- Import them like so:
-- import Geometry.Sphere
-- import Geometry.Cube

-- Some modules might import functions with identical names. Say you have a
-- function to calculate the volume of a sphere in Geometry.Sphere but you also
-- have a function to calculate the volume of a cube in Geometry.Cube. Both of
-- these functions are called `volume`. If you import both modules, there would
-- be a conflict.

-- In that case, use qualified imports like so:
-- import qualified Geometry.Sphere as Sphere
-- import qualified Geometry.Cube as Cube

-- Then use their functions like so:
-- Sphere.volume 123
-- Cube.volume 456
