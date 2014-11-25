#!/bin/bash

if [ -f ~/bin/paths-12.0.sh ]; then
	source ~/bin/paths-12.0.sh
fi

if [ "${android}" = "" ]; then
	android=~/android/system
fi

# build: Handle boot images with custom makefile properly
# cherries+=(76919)

# build: Add option to disable block-based ota
# cherries+=(78849)

# Android: driver_nl80211: implement NoA/p2p_ps/set_wps_ie stubs
# cherries+=(78120)

# rild: Don't use the clientId argument with non-qcom hardware
# cherries+=(78128)

# capabilities ERANG error fix
# cherries+=(78853)

# libc: Add Scorpion-optimized memcpy and memset
cherries+=(77758)

# Revert "Revert "Reenable support for non-PIE executables""
cherries+=(79136)

# libutils: refbase: jellybean mr1 compat
# cherries2+=(79142)

${android}/build/tools/repopick.py -b ${cherries[@]}
