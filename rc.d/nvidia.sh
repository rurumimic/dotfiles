### Nvidia ###

# CUDA Tookit 12

if [ -d "/usr/local/cuda-12/bin" ]; then
    export PATH=/usr/local/cuda-12/bin${PATH:+:${PATH}}
    export LD_LIBRARY_PATH=/usr/local/cuda-12/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
fi

