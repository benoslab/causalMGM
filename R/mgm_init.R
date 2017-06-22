# Load rJava and jars, initialize JVM
mgm_init <- function(){

  # Load rJava library
  library(rJava)
  # Initalize JVM
  .jinit()

  # Add tetrad jar
  .jaddClassPath("jars/tetrad.jar")
}
