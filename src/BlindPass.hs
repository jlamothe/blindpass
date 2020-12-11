{-|

Module      : BlindPass
Description : The main module for the blindpass package
Copyright   : (C) 2020 Jonathan Lamothe
License     : GPL-3
Maintainer  : jonathan@jlamothe.net
Stability   : stable
Portability : POSIX

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

module BlindPass (
  getPassword,
  checkPasswords,
  output,
) where

-- | Prompts the user for a password without echoing to the screen
getPassword
  :: String
  -- ^ The prompt to present to the user
  -> IO String
  -- ^ The user's response
getPassword = undefined

-- | Checks the passwords entered by the user
checkPasswords
  :: String
  -- ^ The first password
  -> String
  -- ^ The second password
  -> IO a
  -- ^ Action to perform if the passwords don't match
  -> (String -> IO a)
  -- ^ Action to perform if the passwords match (takes the password as
  -- an input)
  -> IO a
checkPasswords = undefined

-- | Outputs text to standard error
output
  :: String
  -- ^ The text to be output
  -> IO ()
output = undefined

--jl
