/*
 This file is part of SLRN.

 Copyright (c) 1994, 1999, 2007-2016 John E. Davis <jed@jedsoft.org>
 Copyright (c) 2001-2006 Thomas Schultz <tststs@gmx.de>

 This program is free software; you can redistribute it and/or modify it
 under the terms of the GNU General Public License as published by the Free
 Software Foundation; either version 2 of the License, or (at your option)
 any later version.

 This program is distributed in the hope that it will be useful, but WITHOUT
 ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
 more details.

 You should have received a copy of the GNU General Public License along
 with this program; if not, write to the Free Software Foundation, Inc.,
 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
*/

#define __TOSTRING(X) #X
#define _TOSTRING(X) __TOSTRING(X)

#define SLRN_VERSION_STRING "1.0.4-unoff-"__COMPILE_TIMESTAMP
#define SLRN_VERSION 10040

#if defined(__clang__)
    #define COMPILER_VERSION "/clang "_TOSTRING(__clang_major__)"."_TOSTRING(__clang_minor__)"."_TOSTRING(__clang_patchlevel__)
#elif defined (__GNUC__) || defined (__GNUG__)
    #define COMPILER_VERSION "/gcc "__VERSION__
#else
    #define COMPILER_VERSION ""
#endif
#ifndef SLRNPULL_CODE
extern char *Slrn_Version_String;
extern int Slrn_Version;
extern char *slrn_get_os_name (void);
extern void slrn_show_version (FILE *);
#endif
