# Load rJava and jars, initialize JVM
mgm_init <- function(){

  # Initalize JVM
  .jinit()

  os <- NULL
  os <<- .Platform$OS.type


  if(identical("windows", .Platform$OS.type)){
    jarPath <- paste(.libPaths()[2], "\\causalMGM\\java\\tetradLite.jar", sep="")
  } else{
    jarPath <- paste(.libPaths()[2], "/causalMGM/java/tetradLite.jar", sep="")
  }

 if(!file.exists(jarPath)){
    f = CFILE(jarPath, mode="wb")
    file_url <- 'https://github.com/benoslab/tetradLite/tree/master/out/artifacts/tetradLite_jar/tetradLite.jar'
    curlPerform(url, writedata = f@ref)
    close(f)
  }

  # Add tetrad jar
  .jaddClassPath(jarPath)

  javaPaths <- .jclassPath()

  if(tail(javaPaths, n=1) != jarPath){
    print("Error: tetrad.jar not loaded")
  }
}
