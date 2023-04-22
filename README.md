# EBI02077
 Unsupervised HT29 cell morphology classification based on Deep InfoMax ([link](https://arxiv.org/abs/1808.06670) to paper)

Tested on Ubuntu 20.04 with pyTorch 1.13, CUDA 11.6



#### Preparation

1. Navigate to the repo root;
2. Copy the HT29 dataset folder to ./datasets;
3. In the terminal, run "make";
4. You should see a new tag in browser pops up.



#### Training Deep InfoMax

1. Open "train-encoder.ipynb" and click *cell* →*run all*;
2. Wait until the training completes, use visdom to check status



#### Testing pre-trained models

1. Open "test-all.ipynb" and click *cell* →*run all*;
2. Wait until the testing completes, results can be found under ./saves.



#### TO-DO list

- Show learned representations using UMAP.

- Add a prior discriminator to Deep InfoMax.

- Add a GMM classifier as the down-stream task.





