#!/bin/sh
#
#SBATCH --job-name="AlphaFold_CPU"
#SBATCH --partition=compute
#SBATCH --account=innovation
#SBATCH --time=06:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=50G
#SBATCH --mail-type=ALL

module use --append /scratch/sbranchett/alphafold/.modulefiles
# module use --append /projects/alphafold/modulefiles  # this line of text can be moved to users' ~/.bashrc script

module load alphafold

FASTA_FILE=data/ScBIO3p.fasta
OUTPUT_DIR=output_CPU

alphafold -f $FASTA_FILE \
          -o $OUTPUT_DIR \
          -c $SLURM_CPUS_PER_TASK \
          -g FALSE \
          -m monomer \
          -t 2022-01-01

