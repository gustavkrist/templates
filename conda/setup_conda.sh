#!/usr/bin/env zsh

source $HOME/mambaforge/etc/profile.d/conda.sh
conda deactivate
mamba env remove -n nal
mamba env create -f environment.yaml
conda activate nal
mkdir -p $CONDA_PREFIX/etc/conda/activate.d
mkdir -p $CONDA_PREFIX/etc/conda/deactivate.d

# For setting environment variable on activation/deactivation
# echo '#!/bin/sh\n\nexport ENVVAR="VALUE"' > $CONDA_PREFIX/etc/conda/activate.d/env_vars.sh
# echo '#!/bin/sh\n\nunset ENVVAR' > $CONDA_PREFIX/etc/conda/deactivate.d/env_vars.sh
