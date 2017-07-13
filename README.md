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

## Installation for non-Mac OS Users
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
> library(causalMGM)
> mgm_init() # Initialize MGM
# FOR EXAMPLE DATASET 
> dataset <- loadSampleData() # loads sample dataset, use loadData() to load own dataset
> graph <- mgm(dataset) # Create the undirected graph
Please enter the continuous-continuous lambda value: 0.16
Please enter the continuous-discrete lambda value: 0.2
Please enter the discrete-discrete lambda value: 0.3
> mgm.pc_stable(dataset, graph) # Create the directed graph
```

