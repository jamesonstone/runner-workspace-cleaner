#!/bin/sh

set -e

# remove all files in the current directory (including .* files)
find ! -name '.' ! -name '..' -delete

echo "Workspace clean."
