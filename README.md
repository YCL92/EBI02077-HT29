# EBI02077
Unsupervised human HT29 colon cancer cell morphology classification based on Deep InfoMax ([link](https://arxiv.org/abs/1808.06670) to paper)

Tested on Ubuntu 20.04 with pyTorch 1.12 and CUDA 11.6



2023-04-25 update:

- Added prior distribution learning;
- Added binary GMM for data preparation;
- Added UMAP for vector dimension reduction;
- Added N-class GMM for morphology clustering;
- Modified dataloader for loading 4D batch;
- Modified network structures of encoder and summarizer;
- Modified loss functions accordingly (see report).
- Update README and Makefile.



#### Preparation

1. Navigate to the repo root;
2. Copy all images in the dataset to ./datasets/Images;
3. In the terminal, run "make";
4. You should see a new tag in browser pops up.



#### Training models

1. Run "prepare.ipynb" to generate binary masks via *cell* →*run all*;
2. Run "train.ipynb" to train all models via *cell* →*run all*;
3. Wait until the training completes, use visdom to check status.



#### Testing pre-trained models

1. Run "test.ipynb" via *cell* →*run all*;
2. Wait until the testing completes, results can be found under ./saves.
