# -*-Autoconf-*-
# Checks required to run `stage', a nonportable memory/time tracker.
#
# Copyright (C) 2002 Free Software Foundation, Inc.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
# 02111-1307  USA

# serial 1

AC_DEFUN([BISON_PREREQ_STAGE],
[AC_CHECK_HEADERS([malloc.h])
AC_CHECK_FUNCS([mallinfo])

AC_CHECK_TYPES([struct mallinfo], [], [],
[$ac_includes_default
#if HAVE_MALLOC_H
# include <malloc.h>
#endif
])
])