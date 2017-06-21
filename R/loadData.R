# Prompt user for dataset file and create global DataSet object
loadData <- function(){
  # Create MixedUtils object
  MixedUtils <- J("edu/pitt/csb/mgm/MixedUtils")
  mu <- new(MixedUtils)

  # Prompt user for dataset
  fileName <- readline(prompt="Please enter the name of your dataset file: ")
  fileDir <- readline(prompt="Please enter the path to your dataset file: ")

  # Create DataSet object from file
  ds <- .jcall(mu, "Ledu/cmu/tetrad/data/DataSet;", "loadDataSet", fileDir, fileName)

  return(ds)
}
