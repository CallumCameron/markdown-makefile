# To use, set BASE to the name of the source markdown file, without
# the extension.
BASE := fails_validation

# Normally these come from environment variables but for testing
# purposes we set them explicitly
MARKDOWN_MAKEFILE_DIR=../..
MARKDOWN_MAKEFILE=../../makefiles/Makefile.include

# There are several variables you can set here to customise behaviour.
# See the included makefile for details.


######################################################################
# DO NOT MODIFY THIS SECTION

ifndef MARKDOWN_MAKEFILE
$(error Cannot find the main makefile; is markdown-makefile installed?)
else
include $(MARKDOWN_MAKEFILE)
endif
