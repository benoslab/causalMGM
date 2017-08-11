# Returns the directed graph
mgm.pc_stable <- function(ds, graph){

  PcStable <- J("edu/cmu/tetrad/search/PcStable")

  return(get_directed_graph(ds, graph, PcStable))
}

