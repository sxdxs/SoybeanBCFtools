#!/bin/bash
#SBATCH --job-name=j_BCFtools
#SBATCH --partition=batch
#SBATCH --mail-type=ALL
#SBATCH --mail-user=username@uga.edu
#SBATCH --ntasks=1
#SBATCH --mem=10gb
#SBATCH --time=08:00:00
#SBATCH --output=BCFtools.%j.out
#SBATCH --error=BCFtools.%j.err
cd $SLURM_SUBMIT_DIR
ml BCFtools/1.6-foss-2019b
bcftools index soysnp50k_wm82.a2_41317.vcf.gz
