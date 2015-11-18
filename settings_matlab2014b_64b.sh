#!/bin/bash

#
# Setting up MATLAB 2014b environment 64 bits
#

export MATLAB=/softslin/matlab2014b_64b
export LM_LICENSE_FILE=27000@cimeldap
export PATH="${PATH}:${MATLAB}/bin"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${MATLAB}/bin/matlab"


