# Meta-Learning Siamese Network for Few-Shot TextClassification

### Data

We ran experiments on a total of 6 datasets. You may unzip our processed data file `data.zip` and put the data files under `data/` folder.

| Dataset | Notes |
|---|---|
| 20 Newsgroups ([link](http://qwone.com/~jason/20Newsgroups/ "20 Newsgroups")) | Processed data available. We used the `20news-18828` version, available at the link provided.
| Reuters-21578 ([link](https://kdd.ics.uci.edu/databases/reuters21578/reuters21578.html "Reuters")) | Processed data available. |
| Amazon reviews ([link](http://jmcauley.ucsd.edu/data/amazon/ "Amazon")) | We used a subset of the product review data. Processed data available. |
| HuffPost&nbsp;headlines&nbsp;([link](https://www.kaggle.com/rmisra/news-category-dataset "HuffPost")) | Processed data available. |
| RCV1 ([link](https://trec.nist.gov/data/reuters/reuters.html))	| Processed data available.
| FewRel ([link](https://thunlp.github.io/fewrel.html))	| Processed data available.

Please download pretrained word embedding file `wiki.en.vec` from [here](https://dl.fbaipublicfiles.com/fasttext/vectors-wiki/wiki.en.vec) and put it under `pretrain_wordvec/` folder.

### Quickstart
After you have finished configuring the `data/` folder and the `pretrain_wordvec/` folder, you can run our model with the following commands. 
```
cd bin
sh 1-shot.sh
```

or

```
cd bin
sh 5-shot.sh
```


You can also adjust the model by modifying the parameters in the `1-shot.sh` or `5-shot.sh` file to run on diffrent data sets.

### Dependencies
- Python 3.7
- PyTorch 1.6.0
- numpy 1.18.5
- torchtext 0.7.0
- termcolor 1.1.0
- tqdm 4.46.0
- CUDA 10.2
