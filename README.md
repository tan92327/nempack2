# Nempack2
599 R Package Coding Project 2 - Tom Nemeth

### Installation:
To install the package, use remotes::install_github("tan92327/nempack2")

### Usage:

costfunct(data.vec)

Example: 
```
test.vec = c(1,2,3,5,7,9,11)
sum.sq = costfunct(test.vec)
```

PCA(data.matrix)

Example:
```
test.matrix = matrix(
    c(2, 4, 3, 1, 5, 7),
    nrow=3,
    ncol=2)

pca.obj = PCA(test.matrix)
```
