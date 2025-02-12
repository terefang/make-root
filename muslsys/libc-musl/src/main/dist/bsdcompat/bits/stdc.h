/**
 * @file stdc.h
 * an implementation file for a precompiled header.
 *
 * You may want to define _POSIX_SOURCE, _GNU_SOURCE, or _BSD_SOURCE
 * before you include this file.
 */
/*
 * SPDX-FileCopyrightText: 2003-2023 Free Software Foundation, Inc.
 * SPDX-FileCopyrightText: 2023 Mingye Wang (Artoria2e5)
 * SPDX-License-Identifier: GPL-3.0-or-later WITH GCC-exception-3.1
 * This file is a standalone header.  This header file is free
 * software; you can redistribute it and/or modify it under the
 * terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * Under Section 7 of GPL version 3, you are granted additional
 * permissions described in the GCC Runtime Library Exception, version
 * 3.1, as published by the Free Software Foundation.
 * You should have received a copy of the GNU General Public License and
 * a copy of the GCC Runtime Library Exception along with this program;
 * see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
 * <http://www.gnu.org/licenses/>. */

/* C: Freestanding */
#ifndef _BITS_STDC_H
#define _BITS_STDC_H

#include <assert.h>
#include <ctype.h>
#include <float.h>
#include <limits.h>
#include <setjmp.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdlib.h>

#if __STDC_VERSION__ >= 199409L
#include <iso646.h>
#endif /* C95 */

#if __STDC_VERSION__ >= 199901L
#include <stdint.h>
#endif /* C99 */

/* C: Hosted */
#if __STDC_HOSTED__
#include <errno.h>
#include <locale.h>
#include <math.h>
#include <signal.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

#if defined __has_include && __has_include(<unistd.h>)
#include <unistd.h>
#endif /* unistd (POSIX) */

#if __STDC_VERSION__ >= 199409L
#include <wchar.h>
#include <wctype.h>
#endif /* C95 */

#if __STDC_VERSION__ >= 199901L
#include <complex.h>
#include <fenv.h>
#include <inttypes.h>
#include <stdbool.h>
#include <stdint.h>
#include <tgmath.h>
#endif /* C99 */

#if __STDC_VERSION__ >= 201112L
#include <stdalign.h>
#include <stdatomic.h>
#include <uchar.h>
#endif /* C11 */

/* C23: Use __has_include for now */
#if defined __has_include && __has_include(<stdbit.h>)
#include <stdbit.h>
#endif /* stdbit */
#if defined __has_include && __has_include(<stdckdint.h>)
#include <stdckdint.h>
#endif /* stdckdint */

#endif /* HOSTED */
#endif /* _BITS_STD_C */