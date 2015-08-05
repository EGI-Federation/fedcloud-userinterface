#
# Simple makefile to build the iso image
#


context.iso: user-data meta-data
	genisoimage  -output $@ -volid cidata -joliet -rock $^ 

