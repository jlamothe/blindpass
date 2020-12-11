# blindpass

## Your Rights

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

## Purpose

***This project is not complete yet.  Do not use.***

This is a simple program that allows you to enter a command that
requires a password without leaving a record of that password in hour
history file.

Instead of running a command as:

```bash
somecommand my-super-secret-password
```

You can instead enter:

```bash
somecommand `blindpass`
```

You will then be prompted twice for a password (whithout echoing to
the screen).  If the passwords match, the password will be passed to
your command as though it had been entered from the command line.  If
the passwords do not match, you will be prompted again.  No record of
this password will be kept anywhere.
