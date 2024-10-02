#!/bin/bash
for i in {1..5}; do
  for j in {1..5}; do
    echo -n "$i x $i = $((i * j)) "
  done
  echo
done