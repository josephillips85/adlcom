#!/bin/sh
set -e

VERSION_MAJOR=1
VERSION_MINOR=01

CC='wcc -bt=dos -zq -oxhs'
CC32='wcc386 -mf -zl -zls -zq -oxhs'
AS='wasm -zq'
DEFS="-dVERSION_MAJOR=$VERSION_MAJOR -dVERSION_MINOR=$VERSION_MINOR"
#DEFS="$DEFS -dDEBUG"

set -x
ragel -T1 cmdline.rl

$CC $DEFS adlcom.c
$CC $DEFS cmdline.c
$CC $DEFS res_opl2.c
$AS $DEFS res_glue.s
$AS $DEFS res_end.s
wlink @adlcom.wl

$CC32 $DEFS jadlcom.c
$CC32 $DEFS -fo=jlm_cmdl.o cmdline.c
$CC32 $DEFS -fo=jlm_opl2.o res_opl2.c
wlink @jadlcom.wl
python3 patchpe.py jadlcom.dll
