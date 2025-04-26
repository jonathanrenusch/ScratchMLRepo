#!/bin/bash

# Author: Jonathan Renusch
# Date: 24-04-2025

# path to conda installation 
source /path/to/your/conda/bin/activate

conda init 

# specific location for conda environments
rm -rf /path/to/your/conda_envs/torch_env

# creating conda environment
conda create --prefix /path/to/your/conda_envs/torch_env python=3.11.9 -y

# installing all dependencies
conda activate /path/to/your/conda_envs/torch_env

pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu126

pip3 install torch_geometric seaborn pyyaml scikit-learn scipy lightning tqdm comet_ml matplotlib uproot awkward

conda deactivate

# creating simbolic link for home directory
rm -f /path/to/your/home/dir/torch_env

ln -s /path/to/your/conda_envs/torch_env /path/to/your/home/dir/torch_env
