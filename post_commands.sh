#!/bin/bash

echo -e "\n\e[1;36mContent of output_data/all_costs.csv:\e[0m"
duckdb -c "FROM 'output_data/all_costs.csv'"

echo -e "\n\e[1;36mContent of output_data/profit.csv:\e[0m"
duckdb -c "FROM 'output_data/profit.csv'"
