### Nvidia ###

# CUDA Tookit 12.3

if [ -d "/usr/local/cuda-12/bin" ]; then
    export PATH="$PATH:/usr/local/cuda-12/bin"
    export LD_LIBRARY_PATH=/usr/local/cuda-12/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
fi

