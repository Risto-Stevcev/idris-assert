module Test.Assert

import Crayons

%access export

success : String -> String
success s = green ("✔ " <+> s)

failure : String -> String
failure s = red ("✖ " <+> s)

assertEq : Eq a => (desc : String) -> (given : a) -> (expected : a) -> IO ()
assertEq desc g e = if g == e
  then putStrLn (success desc)
  else putStrLn (failure desc)

assertNotEq : Eq a => (desc : String) -> (given : a) -> (expected : a) -> IO ()
assertNotEq desc g e = if not (g == e)
  then putStrLn (success desc)
  else putStrLn (failure desc)

assertTrue : (desc : String) -> Bool -> IO ()
assertTrue desc p = if p
  then putStrLn (success desc)
  else putStrLn (failure desc)

assertFalse : (desc : String) -> Bool -> IO ()
assertFalse desc p = if (not p)
  then putStrLn (success desc)
  else putStrLn (failure desc)
