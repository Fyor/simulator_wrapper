#!/bin/bash

source /environment.sh

# initialize launch file
dt-launchfile-init

# YOUR CODE BELOW THIS LINE
# ----------------------------------------------------------------------------


# NOTE: Use the variable DT_REPO_PATH to know the absolute path to your code
# NOTE: Use `dt-exec COMMAND` to run the main process (blocking process)

# Using Xvfb to create a virtual display
# NOTE: This won't work if you are using Wayland, only X11
dt-exec Xvfb :33 -screen 0 1024x768x24 -ac +extension GLX +render -noreset 
export DISPLAY=:33
# launching app
dt-exec rosrun simulator_wrapper simulatorwrapper.py

# ----------------------------------------------------------------------------
# YOUR CODE ABOVE THIS LINE

# wait for app to end
dt-launchfile-join
