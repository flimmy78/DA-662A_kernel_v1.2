#
#	config.sh -- Build configuration file for shell scripts.
#
#	Copyright (c) Mbedthis Software LLC, 2003-2004. All Rights Reserved.
#	The latest version of this code is available at http://www.mbedthis.com
#
#	WARNING: This file is generated by configure. DO NOT EDIT.
#	If you wish to modify the defaults, then edit conf/config.defaults.* and 
#	then run "configure --reset".
#
################################################################################
#
#	Copyright (c) Mbedthis Software LLC, 2003-2004. All Rights Reserved.
#	The latest version of this code is available at http://www.mbedthis.com
#
#	This software is open source; you can redistribute it and/or modify it 
#	under the terms of the GNU General Public License as published by the 
#	Free Software Foundation; either version 2 of the License, or (at your 
#	option) any later version.
#
#	This program is distributed WITHOUT ANY WARRANTY; without even the 
#	implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
#	See the GNU General Public License for more details at:
#	http://www.mbedthis.com/downloads/gplLicense.html
#	
#	This General Public License does NOT permit incorporating this software 
#	into proprietary programs. If you are unable to comply with the GPL, a 
#	commercial license for this software and support services are available
#	from Mbedthis Software at http://www.mbedthis.com
#
################################################################################
#
#	Product version
#
BLD_NAME="Mbedthis AppWeb"
BLD_VERSION="1.1.3"
BLD_NUMBER="0"
BLD_TYPE="RELEASE"
BLD_DEFAULTS="uclinux"

#
#	Other product settings
#
BLD_COMPANY="Mbedthis"
BLD_DEBUG=0
BLD_DIRS="bootstrap include obj bin mpr ejs http doc appWeb images"
BLD_HTTP_PORT=7777
BLD_LIB_VERSION="1.0.0"
BLD_PRODUCT="appWeb"
BLD_SSL_PORT=4443

#
# 	Build system settings (system doing compiling). Blank means use defaults.
#
BLD_BUILD_CPU=""
BLD_BUILD_OS=""

#
#	Hosting (target) system settings.
#
BLD_CPU=""
BLD_OS="bld_cpu"
BLD_UNIX="1"
MPR_CPU=MPR_UNKNOWN

#
#	Installation directories
#
BLD_PREFIX="/etc/appWeb"
BLD_DOC_PREFIX="/usr/share/appWeb-1.1.3"
BLD_INC_PREFIX="/usr/include/appWeb"
BLD_LIB_PREFIX="/usr/lib"
BLD_ROOT_PREFIX="/"
BLD_SBIN_PREFIX="/bin"
BLD_SRC_PREFIX="/usr/src/appWeb-1.1.3"
BLD_WEB_PREFIX="/var/appWeb/web"

if [ "${BLD_OS}" = "WIN" ]
then
	BLD_TOOLS_DIR=${BLD_TOP}/bin
	BLD_BIN_DIR=${BLD_TOP}/bin/RELEASE
	BLD_INC_DIR=${BLD_TOP}/include
	BLD_EXP_OBJ_DIR=${BLD_TOP}/obj/RELEASE
else
	BLD_TOOLS_DIR=${BLD_TOP}/bin
	BLD_BIN_DIR=${BLD_TOP}/bin
	BLD_INC_DIR=/usr/include/appWeb
	BLD_EXP_OBJ_DIR=${BLD_TOP}/obj
fi

#
#	BLD_OBJ_DIR varies per-makefile depending on if the directory is exporting
#	objects.
#
if [ "${EXPORT_OBJECTS}" = yes ]
then
	BLD_OBJ_DIR=${BLD_EXP_OBJ_DIR}
else
	BLD_OBJ_DIR=.
fi

#
#	Feature selection
#
BLD_FEATURE_ACCESS_LOG=0
BLD_FEATURE_ADMIN_MODULE=0
BLD_FEATURE_ASSERT=0
BLD_FEATURE_AUTH_MODULE=1
BLD_FEATURE_C_API_MODULE=0
BLD_FEATURE_CGI_MODULE=0
BLD_FEATURE_COMPAT_MODULE=0
BLD_FEATURE_CONFIG=1
BLD_FEATURE_COOKIE=1
BLD_FEATURE_COPY_MODULE=1
BLD_FEATURE_DIGEST=1
BLD_FEATURE_DLL=0
BLD_FEATURE_EGI_MODULE=0
BLD_FEATURE_EJS_MODULE=1
BLD_FEATURE_ESP_MODULE=1
BLD_FEATURE_KEEP_ALIVE=1
BLD_FEATURE_IF_MODIFIED=1
BLD_FEATURE_LIB_STDCPP=1
BLD_FEATURE_LOG=1
BLD_FEATURE_MULTITHREAD=0
BLD_FEATURE_MALLOC=0
BLD_FEATURE_MALLOC_STATS=0
BLD_FEATURE_MALLOC_LEAK=0
BLD_FEATURE_MALLOC_HOOK=0
BLD_FEATURE_OPENSSL_MODULE=0
BLD_FEATURE_PHP4_MODULE=0
BLD_FEATURE_PHP5_MODULE=0
BLD_FEATURE_ROMFS=0
BLD_FEATURE_RUN_AS_SERVICE=1
BLD_FEATURE_SAFE_STRINGS=0
BLD_FEATURE_SAMPLES=0
BLD_FEATURE_SESSION=1
BLD_FEATURE_SHARED=1 
BLD_FEATURE_SQUEEZE=1
BLD_FEATURE_SSL_MODULE=0
BLD_FEATURE_STATIC=0 
BLD_FEATURE_TEST=0
BLD_FEATURE_UPLOAD_MODULE=0
BLD_FEATURE_XDB_MODULE=0

#
#	Static or shared libc
#
BLD_FEATURE_STATIC_LINK_LIBC=0

#
#	Clean install or not
#
BLD_CLEAN_INSTALL=0

#
#	AppWeb configuration file
#
BLD_APPWEB_CONFIG=uclinux.conf

#
#	Builtin modules
#
BLD_FEATURE_ADMIN_MODULE_BUILTIN=0
BLD_FEATURE_AUTH_MODULE_BUILTIN=1
BLD_FEATURE_C_API_MODULE_BUILTIN=0
BLD_FEATURE_CGI_MODULE_BUILTIN=0
BLD_FEATURE_COMPAT_MODULE_BUILTIN=0
BLD_FEATURE_COPY_MODULE_BUILTIN=1
BLD_FEATURE_EGI_MODULE_BUILTIN=0
BLD_FEATURE_EJS_MODULE_BUILTIN=1
BLD_FEATURE_ESP_MODULE_BUILTIN=1
BLD_FEATURE_OPENSSL_MODULE_BUILTIN=0
BLD_FEATURE_PHP4_MODULE_BUILTIN=0
BLD_FEATURE_PHP5_MODULE_BUILTIN=0
BLD_FEATURE_SSL_MODULE_BUILTIN=0
BLD_FEATURE_UPLOAD_MODULE_BUILTIN=0
BLD_FEATURE_XDB_MODULE_BUILTIN=0

#
#	Loadable modules
#
BLD_FEATURE_ADMIN_MODULE_LOADABLE=0
BLD_FEATURE_AUTH_MODULE_LOADABLE=0
BLD_FEATURE_C_API_MODULE_LOADABLE=0
BLD_FEATURE_CGI_MODULE_LOADABLE=0
BLD_FEATURE_COMPAT_MODULE_LOADABLE=0
BLD_FEATURE_COPY_MODULE_LOADABLE=0
BLD_FEATURE_EGI_MODULE_LOADABLE=0
BLD_FEATURE_EJS_MODULE_LOADABLE=0
BLD_FEATURE_ESP_MODULE_LOADABLE=0
BLD_FEATURE_OPENSSL_MODULE_LOADABLE=0
BLD_FEATURE_PHP4_MODULE_LOADABLE=0
BLD_FEATURE_PHP5_MODULE_LOADABLE=0
BLD_FEATURE_SSL_MODULE_LOADABLE=0
BLD_FEATURE_UPLOAD_MODULE_LOADABLE=0
BLD_FEATURE_XDB_MODULE_LOADABLE=0

#
#	Location of package directories
#
BLD_PHP4_DIR=../../packages/php/php-4.3.6
BLD_PHP5_DIR=../../packages/php/php-5.0.0RC3
BLD_OPENSSL_DIR=../../packages/openssl/openssl-0.9.7d

#
#	Package libraries
#
BLD_PHP4_LIBS="php4 crypt resolv db z"
BLD_PHP5_LIBS="php5 crypt resolv db z"
BLD_OPENSSL_LIBS="ssl crypto"

################################################################################
#
#	Ensure we run our build tools by preference
#

PATH=${BLD_TOP}/bin:${BLD_TOP}/bin/${BLD_TYPE}:${PATH}
export PATH

################################################################################
#
#	Standard programs
#
#	If the user specifies the flags to configure (eg. CFLAGS=-Y ./configure) 
#	those take precedence. Otherwise, we use the factory defaults if the 
#	user supplies no such flags.
#
BLD_AR="arm-linux-ar"
BLD_CC="arm-linux-gcc "
BLD_CC_FOR_BUILD="cc"
BLD_JAVAC="javac"
BLD_LD="arm-linux-ld "
BLD_LD_FOR_BUILD="ld"
BLD_RANLIB="arm-linux-ranlib"

#
#	Standard build flags
#
BLD_CFLAGS="  -Dlinux -D__linux__ -Dunix -DEMBED -nostdinc -I/home/work/sdlinux-moxaart/include -idirafter /home/work/sdlinux-moxaart/include/include -Wall -fno-common  -fno-builtin -nostdlib -DARCH_UC_7112_LX_PLUS"
BLD_IFLAGS=""
BLD_LDFLAGS=" -nostartfiles /home/work/sdlinux-moxaart/lib/crt1.o /home/work/sdlinux-moxaart/lib/crti.o /bin/sh: arm-linux-gcc: not found/crtbegin.o -L/home/work/sdlinux-moxaart/lib"

#
#	Standard file extensions
#
BLD_ARCHIVE=.a
BLD_EXE=
BLD_OBJ=.o
BLD_PIOBJ=.lo
BLD_CLASS=.class
BLD_SHLIB=
BLD_SHOBJ=.so

################################################################################
#
#  Local variables:
#  tab-width: 4
#  c-basic-offset: 4
#  End:
#  vim600: sw=4 ts=4 fdm=marker
#  vim<600: sw=4 ts=4
#
