#!/bin/sh

if [ -z "$RUNAI_MPI_NUM_WORKERS" ]; then
    echo "Environment variable 'RUNAI_MPI_NUM_WORKERS' does not exist"
    exit 1
fi

echo "Running with $RUNAI_MPI_NUM_WORKERS workers"
# The script is available at https://github.com/horovod/horovod/blob/master/examples/pytorch/pytorch_synthetic_benchmark.py
horovodrun -np $RUNAI_MPI_NUM_WORKERS -hostfile /etc/mpi/hostfile  python /examples/pytorch_synthetic_benchmark.py
