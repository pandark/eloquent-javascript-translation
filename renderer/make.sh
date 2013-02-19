#!/bin/bash
cd "$(dirname $0)"
ghc --make Main.hs -o ../render
