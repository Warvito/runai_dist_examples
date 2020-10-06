#!/bin/sh

if [ -z "$RUNAI_MPI_NUM_WORKERS" ]; then
    echo "Environment variable 'RUNAI_MPI_NUM_WORKERS' does not exist"
    exit 1
fi

echo "Running with $RUNAI_MPI_NUM_WORKERS workers"
horovodrun -np $RUNAI_MPI_NUM_WORKERS python /examples/pytorch_synthetic_benchmark.py
