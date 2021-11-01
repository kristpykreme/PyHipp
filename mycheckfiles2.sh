#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"
find . -name "rplpl-slurm.*.out" -printf "==> %f <==\n"
sed -n '1p' < rplpl-slurm.*.out
find . -name "rs1-slurm.*.out" -printf "==> %f <==\n"
sed -n '1p' < rs1-slurm.*.out
find . -name "rs2-slurm.*.out" -printf "==> %f <==\n"
sed -n '1p' < rs2-slurm.*.out
find . -name "rs3-slurm.*.out" -printf "==> %f <==\n"
sed -n '1p' < rs3-slurm.*.out
find . -name "rs4-slurm.*.out" -printf "==> %f <==\n"
sed -n '1p' < rs4-slurm.*.out
printf "\n"

echo "End Times"
find . -name "rplpl-slurm.*.out" -printf "==> %f <==\n"
tail -n 5 rplpl-slurm.*.out
find . -name "rs1-slurm.*.out" -printf "==> %f <==\n"
tail -n 5 rs1-slurm.*.out
find . -name "rs2-slurm.*.out" -printf "==> %f <==\n"
tail -n 5 rs2-slurm.*.out
find . -name "rs3-slurm.*.out" -printf "==> %f <==\n"
tail -n 5 rs3-slurm.*.out
find . -name "rs4-slurm.*.out" -printf "==> %f <==\n"
tail -n 5 rs4-slurm.*.out
printf "\n"
