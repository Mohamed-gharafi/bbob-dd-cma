#!/bin/sh


rsync -a --exclude={'sync-data.sh','send-exp.sh'} -e "ssh -i $HOME/.ssh/id_mar" . mgharafi@margaret.saclay.inria.fr:./dd-cma-coco-benchmark/experiments/$(basename $(pwd))
