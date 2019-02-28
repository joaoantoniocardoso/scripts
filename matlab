#!/usr/bin/env zsh

# Run Matlab
wmname LG3D
#sudo nice -n -20 su -c 'LIBGL_DRI3_DISABLE=1 /./usr/local/MATLAB/R2016b/bin/matlab -desktop' joaoantoniocardoso
LIBGL_DRI3_DISABLE=1 nice -n -20  /./usr/local/MATLAB/R2016b/bin/matlab -desktop
