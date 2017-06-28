# Load rJava and jars, initialize JVM
mgm_init <- function(){

  # Load rJava library
  library(rJava)
  # Initalize JVM
  .jinit()

  # Add tetrad jar
  jarPath <- paste(.libPaths()[1], "/causalMGM/java/tetrad.jar", sep="")
  .jaddClassPath(jarPath)

  javaPaths <- .jclassPath()

  if(tail(javaPaths, n=1) != jarPath){
    print("Error: tetrad.jar not loaded")
  }
}
