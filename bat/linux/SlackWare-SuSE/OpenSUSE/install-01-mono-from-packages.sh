#!/bin/bash


# 1-click installation in the terminal
# syntax is OCICLI [URL]

OCICLI \
	http://download.mono-project.com/repo/mono-devel.ymp
OCICLI \
	http://download.mono-project.com/repo/mono-complete.ymp
OCICLI \
	http://download.mono-project.com/repo/referenceassemblies-pcl.ymp

# Manually downloaded RPM file
# zypper install /path/to/manually/downloaded.rpm
