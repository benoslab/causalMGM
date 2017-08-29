# Load rJava and jars, initialize JVM
mgm_init <- function(){

  # Initalize JVM
  .jinit()

  jarPath <- paste(getwd(), "tetradLite.jar", sep=.Platform$file.sep)

 if(!file.exists(jarPath)){
    file_url <- 'https://cdn.rawgit.com/benoslab/tetradLite/7c16abbd/out/artifacts/tetradLite_jar/tetradLite.jar'
    download.file(url=file_url, mode='wb', destfile = jarPath)
  }

  # Add tetrad jar
  .jaddClassPath(jarPath)

  javaPaths <- .jclassPath()

  if(tail(javaPaths, n=1) != jarPath){
    print("Error: tetrad.jar not loaded")
  }
}
