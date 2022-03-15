#!/bin/sh
current_exp_number=$(ls -dq experiment0* | wc -l)
let exp_number=$current_exp_number+1
cp -rv experimentproto experiment00$(echo $exp_number)
