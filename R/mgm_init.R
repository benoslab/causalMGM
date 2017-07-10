# Load rJava and jars, initialize JVM
mgm_init <- function(){

  # Load rJava library
  library(rJava)
  # Initalize JVM
  .jinit()

  os <<- .Platform$OS.type

  if(identical("windows", .Platform$OS.type)){
    jarPath <- paste(.libPaths()[1], "\\causalMGM\\java\\tetradLite.jar", sep="")
  } else{
    jarPath <- paste(.libPaths()[1], "/causalMGM/java/tetradLite.jar", sep="")
  }

  # Add tetrad jar
  .jaddClassPath(jarPath)

  javaPaths <- .jclassPath()

  if(tail(javaPaths, n=1) != jarPath){
    print("Error: tetrad.jar not loaded")
  }
}
