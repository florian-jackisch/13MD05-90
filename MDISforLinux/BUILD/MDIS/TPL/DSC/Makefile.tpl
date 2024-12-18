#CREATION_NOTE
##REPLNEWLINE001
ifndef MEN_LIN_DIR
MEN_LIN_DIR = /opt/menlinux
endif
##REPLNEWLINE002
# You need to select the development environment so that MDIS
# modules are compiled with the correct tool chain
##REPLNEWLINE003
WIZ_CDK = Selfhosted
##REPLNEWLINE004
# All binaries (modules, programs and libraries) will be
# installed under this directory.
##REPLNEWLINE005
# TARGET_TREE
##REPLNEWLINE006
# The directory of the kernel tree used for your target's
# kernel. If you're doing selfhosted development, it's
# typically /usr/src/linux. This directory is used when
# building the kernel modules.
##REPLNEWLINE007
LIN_KERNEL_DIR = SCAN_LIN_KERNEL_DIR
##REPLNEWLINE008
# Defines whether to build MDIS to support RTAI. If enabled,
# MDIS modules support RTAI in addition to the standard Linux
# mode. Set it to "yes" if you want to access MDIS devices from
# RTAI applications
##REPLNEWLINE009
MDIS_SUPPORT_RTAI = no
##REPLNEWLINE010
# The directory where you have installed the RTAI distribution
# via "make install"
##REPLNEWLINE011
# RTAI_DIR
##REPLNEWLINE012
# The include directory used when building user mode libraries
# and applications. If you're doing selfhosted development,
# it's typically /usr/include. If you're doing cross
# development, select the include directory of your cross
# compiler. Leave it blank if your compiler doesn't need this
# setting.
##REPLNEWLINE013
# LIN_USR_INC_DIR
##REPLNEWLINE014
# Define whether to build/use static or shared user state
# libraries. In "static" mode, libraries are statically linked
# to programs. In "shared" mode, programs dynamically link to
# the libraries. "shared" mode makes programs smaller but
# requires installation of shared libraries on the target
##REPLNEWLINE015
LIB_MODE = shared
##REPLNEWLINE016
# Defines whether to build and install the release (nodbg) or
# debug (dbg) versions of the kernel modules. The debug version
# of the modules issue many debug messages using printk's for
# trouble shooting
##REPLNEWLINE017
ALL_DBGS = nodbg
##REPLNEWLINE018
# The directory in which the kernel modules are to be
# installed. Usually this is the target's
# /lib/modules/$(LINUX_VERSION)/misc directory.
##REPLNEWLINE019
MODS_INSTALL_DIR = /lib/modules/$(LINUX_VERSION)/misc
##REPLNEWLINE020
# The directory in which the user state programs are to be
# installed. Often something like /usr/local/bin. (relative to
# the target's root tree)
##REPLNEWLINE021
BIN_INSTALL_DIR = SCAN_BIN_INSTALL_DIR
##REPLNEWLINE022
# The directory in which the shared (.so) user mode libraries
# are to be installed. Often something like /usr/local/lib.
# (relative to the target's root tree)
##REPLNEWLINE023
LIB_INSTALL_DIR = SCAN_LIB_INSTALL_DIR
##REPLNEWLINE024
# The directory in which the static user mode libraries are to
# be installed. Often something like /usr/local/lib on
# development host. For cross compilation select a path
# relative to your cross compilers lib directory.
##REPLNEWLINE025
STATIC_LIB_INSTALL_DIR = SCAN_LIB_INSTALL_DIR
##REPLNEWLINE026
# The directory in which the MDIS descriptors are to be
# installed. Often something like /etc/mdis. (Relative to the
# targets root tree)
##REPLNEWLINE027
DESC_INSTALL_DIR = /etc/mdis
##REPLNEWLINE028
# The directory in which the MDIS device nodes are to be
# installed. Often something like /dev. (Relative to the
# targets root tree)
##REPLNEWLINE029
DEVNODE_INSTALL_DIR = /dev
##REPLNEWLINE030
ALL_LL_DRIVERS = \
#SCAN_NEXT_LL_DRIVER
##REPLNEWLINE033
##REPLNEWLINE034
ALL_BB_DRIVERS = \
	SMB2BB/DRIVER/NATIVE/driver.mak
#SCAN_NEXT_BB_DRIVER
##REPLNEWLINE035
##REPLNEWLINE036
ALL_USR_LIBS = \
	USR_OSS/library.mak
	USR_UTL/COM/library.mak
#SCAN_NEXT_USR_LIB
##REPLNEWLINE037
##REPLNEWLINE038
ALL_CORE_LIBS = \
	DBG/library.mak
	OSS/library.mak
	CHAMELEON/COM/library.mak
##REPLNEWLINE039
ALL_LL_TOOLS = \
#SCAN_NEXT_LL_TOOL
##REPLNEWLINE040
ALL_COM_TOOLS = \
	MDIS_API/M_ERRSTR/COM/program.mak
	MDIS_API/M_GETBLOCK/COM/program.mak
	MDIS_API/M_GETSTAT/COM/program.mak
	MDIS_API/M_GETSTAT_BLK/COM/program.mak
	MDIS_API/M_MOD_ID/COM/program.mak
	MDIS_API/M_OPEN/COM/program.mak
	MDIS_API/M_READ/COM/program.mak
	MDIS_API/M_REV_ID/COM/program.mak
	MDIS_API/M_SETBLOCK/COM/program.mak
	MDIS_API/M_SETSTAT/COM/program.mak
	MDIS_API/M_SETSTAT_BLK/COM/program.mak
	MDIS_API/M_WRITE/COM/program.mak
	WDOG/WDOG_TEST/COM/program.mak
	WDOG/WDOG_SIMP/COM/program.mak
#SCAN_NEXT_COM_TOOL
##REPLNEWLINE041
ALL_NATIVE_DRIVERS = \
#SCAN_NEXT_NAT_DRIVER
##REPLNEWLINE042
##REPLNEWLINE043
ALL_NATIVE_LIBS =
##REPLNEWLINE044
ALL_NATIVE_TOOLS =
##REPLNEWLINE045
ALL_DESC = system
##REPLNEWLINE046
include $(MEN_LIN_DIR)/BUILD/MDIS/TPL/rules.lastmak
