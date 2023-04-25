.ONESHELL:

SHELL = /bin/bash
CONDA_ACTIVATE = source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ; conda activate

# Name of conda environment
ENV_NAME := torch11x

# Create conda environment then run jupyter and visdom servers
.PHONY: env
env:
	conda env create -f conda-env.yml -n $(ENV_NAME)
	$(CONDA_ACTIVATE) $(ENV_NAME)
	visdom -port 8000 & jupyter notebook --port 8001
