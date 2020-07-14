#!/bin/bash
#PBS -N XXXnameXXX
#PBS -l nodes=XXXmpinodesXXX:ppn=XXXthreadsXXX:gpus=XXXextra2XXX
#PBS -l walltime=XXXextra1XXX:00:00
#PBS -q XXXqueueXXX
#PBS -e XXXerrfileXXX
#PBS -o XXXoutfileXXX

cd $PBS_O_WORKDIR

module load RELION/3.1.0-fosscuda-2019b

export CUDA_MPS_PIPE_DIRECTORY=$TMPDIR/nvidia-mps
nvidia-cuda-mps-control -d

mpirun -n XXXmpinodesXXX XXXcommandXXX
