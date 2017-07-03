module Test.Example

import Test.Assert

export
main : IO ()
main = do
  assertEq "show 3 and '3' are equal" (show 3) "3"
  assertEq "True and False are equal" True False

  assertNotEq "1 + 1 is not 3" (1 + 1) 3
  assertNotEq "1 + 1 is not 2" (1 + 1) 2

  assertTrue "Something is something" (isJust (Just 3))
  assertTrue "Something is nothing" (isJust $ the (Maybe String) Nothing)

  assertFalse "True && False is False" (True && False)
  assertFalse "True || False is False" (True || False)
