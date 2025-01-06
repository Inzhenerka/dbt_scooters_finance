#!/bin/bash

CSV_FILES=(output_data/*.csv)

[[ -e "${CSV_FILES[0]}" ]] || exit 0

for file in "${CSV_FILES[@]}"; do
  echo -e "\n\e[1;36mContent of $file:\e[0m"
  duckdb -c "FROM '$file' LIMIT 100"
done
