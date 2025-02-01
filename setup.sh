#!/bin/bash

ENABLE_CONTRIB=1 python setup.py bdist_wheel -- \
    -DWITH_CUDA=ON \
    -DWITH_CUDNN=ON \
    -DOPENCV_DNN_CUDA=ON \
    -DENABLE_FAST_MATH=1 \
    -DCUDA_FAST_MATH=1 \
    -DWITH_CUBLAS=ON \
    -DCUDA_ARCH_BIN=6.1 -- \
    -j $(nproc)
