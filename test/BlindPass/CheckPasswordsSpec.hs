{-

Copyright (C) 2020 Jonathan Lamothe
<jonathan@jlamothe.net>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or (at
your option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

-}

module BlindPass.CheckPasswordsSpec (spec) where

import Test.Hspec (Spec, context, describe, it, shouldReturn)

import BlindPass

spec :: Spec
spec = describe "checkPasswords" $ mapM_
  ( \(label, pass1, pass2, expected) -> do
    context label $ let
      result = checkPasswords pass1 pass2 onFail onPass
      in it ("should be " ++ show expected) $
        result `shouldReturn` expected
  )

  --  label,      password 1, password 2, expected result
  [ ( "no match", "foo",      "bar",      Nothing         )
  , ( "match",    "foo",      "foo",      Just "foo"      )
  ]

  where
    onFail = return Nothing
    onPass = return . Just

--jl
