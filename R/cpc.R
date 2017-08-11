# Returns the directed graph
mgm.cpc <- function(ds, graph){

  CPC <- J("edu/cmu/tetrad/search/Cpc")

  return(get_directed_graph(ds, graph, CPC))
}

