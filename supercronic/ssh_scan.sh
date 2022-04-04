#!/bin/sh

# compute file suffix for given entity ("building" in the default example)
fn="${2// /_}"

# scan provided IP range using nmap and map in required layout
miners=$(nmap -p22 --open -oG - "$1" | grep "/open" | cut -d" " -f2 | sed 's/.*/"&:8081"/' | paste -sd',' | sed "s/.*/[&]/")
# store the results
echo "[{"\"targets\": $miners"}]" > /mnt/miners_${fn}.json

# JSON format required
#[
#  {
#    "labels": {
#      "x": "foo",
#      "y": "bar"
#    },
#    "targets": [
#      "1.2.3.4:8081",
#      "1.2.3.5:8081",
#      "1.2.3.6:8081"
#   ]
#  }
#]
