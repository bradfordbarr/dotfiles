# Make sure august scripts are in the path
export PATH="${PATH}:${AUGUST_SRC}/scripts/bin"

# Set up august source path
export AUGUST_SRC="${HOME}/src/august"

# Add firmware tools to path, and add android home for android builds
if [ "${PLATFORM}" = "Darwin" ]; then
  export PATH="${PATH}:${AUGUST_SRC}/firmware-tools/mac/arm-gcc/bin"
  export ANDROID_HOME="/usr/local/opt/android-sdk"
fi

