#!/bin/sh


rsync -a --exclude '__pycache__' --exclude 'slurm*' --exclude '*.pydict' -e "ssh -i $HOME/.ssh/id_mar" mgharafi@margaret.saclay.inria.fr:./dd-cma-coco-benchmark/experiments/$(basename $(pwd)) ../
