# causalMGM
causalMGM is a software that calculates the undirected and directed graph over continuous and discrete variables.

## R Library Requirement
R >= 3.4.0,
Java >= 1.7.0,
[rJava](https://cran.r-project.org/web/packages/rJava/index.html)

## Installation for Mac OS X Users
- In the terminal, configure Java and R
```
sudo R CMD javareconf
```
- Load libjvm.dylib in R
```R
dyn.load('/path/to/libjvm.dylib')
```
- Install the R library requirements:
```R
install.packages("rJava")
```
- Install causalMGM from github:

```R
library(devtools)
install_github("nehaabraham/causalMGM")
```

## Example
```R
library(causalMGM)
mgm_init() # Initialize MGM
dataset <- loadData() # Load Data
# FOR EXAMPLE DATASET 
dataset <- loadSampleData()
graph <- mgm(dataset) # Create the undirected graph
mgm.pc_stable(dataset, graph) # Create the directed graph
```

