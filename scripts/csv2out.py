import sys
import igraph

g = igraph.Graph.Read_Ncol(sys.argv[1], directed=True)

for v, deg in zip(g.vs, g.vs.degree(mode='OUT')):
    if deg:
        v['type'] = True

orgs, people = g.bipartite_projection()

orgs.write_gml(sys.stdout)
