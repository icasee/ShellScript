#!/bin/bash
time dd if=/dev/zero bs=256k of=$1/tstfile count=1024 2>&1 | awk '/sec/ {print $1 / $5 / 1048576, "MB/sec" }'
