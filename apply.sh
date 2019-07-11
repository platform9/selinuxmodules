#!/bin/bash
for f in `ls ./policies/`; do
	semodule -i $f
done
