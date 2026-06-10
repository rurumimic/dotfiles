### Intel Threading Building Block (lazy) ###

# Intel oneAPI's env/vars.sh costs ~80ms to source, and TBB is a C++ library
# needed only when compiling/linking -- never just for an interactive shell.
# So defer it: run `tbb` to load the env into the current shell on demand.
# Guard on $TBBROOT (set by vars.sh) so re-running is a harmless no-op.
if [ -d "/opt/intel/oneapi/tbb/latest" ]; then
    tbb() {
        if [ -n "$TBBROOT" ]; then
            echo "Intel TBB already loaded (TBBROOT=$TBBROOT)"
            return 0
        fi
        . /opt/intel/oneapi/tbb/latest/env/vars.sh && \
            echo "Intel TBB environment loaded (TBBROOT=$TBBROOT)"
    }
fi
