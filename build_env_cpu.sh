#!/bin/bash
# save cmdline reference: https://github.com/NVIDIA/nvidia-docker/blob/master/nvidia-docker#L7
CF_CMDLINE=()
while [ $# -gt 0 ]; do
  CF_CMDLINE+=("$1")
  shift
done

source /opt/intel/oneapi/compiler/ICC_VERSION/env/vars.sh
source /opt/intel/oneapi/mkl/MKL_VERSION/env/vars.sh
source /opt/intel/oneapi/tbb/TBB_VERSION/env/vars.sh
source /opt/intel/oneapi/mpi/MPI_VERSION/env/vars.sh

export CC=/opt/intel/oneapi/mpi/MPI_VERSION/bin/mpiicc
export CXX=/opt/intel/oneapi/mpi/MPI_VERSION/bin/mpiicpc

exec "${CF_CMDLINE[@]}"
