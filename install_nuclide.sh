#!/bin/bash -x

git clone https://github.com/facebook/nuclide
cd nuclide
git checkout v0.0.32
./scripts/dev/setup --no-atom
./pkg/nuclide/server/nuclide-start-server -h
