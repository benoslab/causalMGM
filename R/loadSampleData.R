# Loads sample dataset
loadSampleData <- function(){
  # Create MixedUtils object
  MixedUtils <- J("edu/pitt/csb/mgm/MixedUtils")
  mu <- new(MixedUtils)

  # Prompt user for dataset
  fileName <- "Lung-tetrad_hv-14vars.txt"
  fileDir <- paste(.libPaths()[1], "/causalMGM/txt", sep="")

  # Create DataSet object from file
  ds <- .jcall(mu, "Ledu/cmu/tetrad/data/DataSet;", "loadDataSet", fileDir, fileName)

  return(ds)
}

