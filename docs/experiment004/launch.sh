#!/bin/sh

batches=20
budget_multiplier=25
module load py3-scipy/1.1.0  # need numpy etc

date  # for the record only
for ((i=1; i<=$batches; i++))
do
    srun --ntasks=1 -l -o slurm.out$i -e slurm.err$i python3 example_experiment2.py budget_multiplier=$budget_multiplier batch=$i/$batches budget_multiplier=$budget_multiplier &
done

wait  # the above background processes will be killed by the end of the script, so we better wait for them
date  # for the record only

