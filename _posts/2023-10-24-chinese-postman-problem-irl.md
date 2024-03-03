---
layout: post
category: mathblog
title:  "Chinese Postman Problem In Real Life"
date:   2023-10-24 21:03:36 +0530
---
## A Chinese Salesman in Shippan
Shippan is a beautiful community of a hundred houses or so that sit on a peninsula in the Long Island sound. It's a popular place to go for a walk, and I have spent considerable time running there. One day, as I was running around this neighborhood, I began to think about visiting every home. How long would it take to walk every street?

I knew a little about graph theory and later realized my curiosity was an instance of the Chinese Postman Problem. The mailman has to travel along every road in a city to deliver letters and he wants to do it as fast as possible. In graph theory parlance, it is about finding the shortest closed walk where every edge is visited. 

## The Technique
The strategy is to transform this problem into one we know how to solve: eulerian circuits. Fun fact, this was the first graph theory problem ever solved. It's a famous anecdote about Leonhard Euler and the Konigsberg bridges bridges. He was looking at the seven bridges of Konigsberg and wondered if he could create a walking path that would cross each bridge exactly once. He proved that for such a path to exist, every node must have an even degree and, in so doing, invented graph theory. 

![Konigsberg Bridges](/assets/cppshippan/Konigsberg_bridges.png)

First, we'll check if Shippan has exclusively nodes with even degrees. (Spoiler alert, it doesn't. It's just like Konigsberg.)

We'll pretend like it does have exclusively nodes with even degrees by adding edges. Importantly, we need to choose to add edges in the best possible way (e.g. adds the least distance to our route). We will end up adding  one "imaginary" edge between two odd-degree nodes until all nodes have even degree. Finally, we just compute the eulerian circuit for our graph.

## The Code
I'll be walking through my script that does this, but only including somewhat interesting parts. The script is on [github](https://github.com/jschless/shippaniltonian).

I stumbled upon a lovely package, [OSMnx](https://osmnx.readthedocs.io/en/stable/user-reference.html), that helps integrate ```openstreetmap``` with ```python```. It turns out it is incredibly easy to work with. Thank you UC Berkeley city planning professor!

First, I pulled the relevant data:

```python
g = ox.graph_from_place('Stamford, CT', network_type="drive")
```

This was my entire town, so I restricted it to the subgraph that included the roads in Shippan. I selected all nodes that were connected to an edge (street) in Shippan.

```python
street_names = {"Ralsey Road", "Ralsey Road South", "Sagamore Road", "Woolsey Road", "Ocean Drive West", "Stamford Avenue",
                "Shippan Avenue", "Westcott Road", "Sea Beach Drive", "Ocean Drive East", "Rockledge Drive", "Hobson Street",
                "Fairview Avenue", "Brightside Drive", "Sound Avenue", "Cresthill Place", "Van Rensselaer Avenue",
                "Verplank Avenue", "Westminster Road", "Miramar Road", "Saddle Rock Road", "Rogers Road", "Lighthouse Way"}

selected_nodes = []

for u, v, e in g.edges(data=True):
    name = e.get('name', [])
    # sometimes its a list, hacky but w/e
    check_names = name if isinstance(name, list) else [name]

    for n in check_names:
        if n in street_names:
            selected_nodes.append(u)
            selected_nodes.append(v)

# Remove nodes on Shippan avenue north of Shippan Ave and Ralsey
selected_nodes = [u for u in selected_nodes if g.nodes[u] 'y'] < 41.03356] 
```
I also relied on ```OSMnx``` for consolidating intersections and removing extra nodes. Basically, the ```openstreetmap``` data has some rough edges and this irons them out for you.

```python
g_proj = ox.project_graph(g.subgraph(selected_nodes))
g = ox.consolidate_intersections(g_proj, rebuild_graph=True, tolerance=15, dead_ends=False)
```

Here's our map at this point. 

![Roadmap after pre-processing](/assets/cppshippan/pre-add.png)


Next, we add edges so all nodes have an even degree. This consists of:

1) Identifying odd-degree nodes: 
 ```odd_deg_nodes = [g for g, v in ug.degree if v % 2 != 0]```

2) Finding all possible combinations of two such nodes: 
```odd_node_pairs = list(itertools.combinations(odd_deg_nodes, 2))```

3) Finding shortest path between all possible pairs and constructing a *new* graph where each node is a odd-degree node from our original graph. The graph is completely connected (there is an edge between every combination, and it's weight is the shortest path from the original graph):

```python
odd_edge_graph = nx.Graph()
for i in range(len(odd_deg_nodes)):
    for j in range(i, len(odd_deg_nodes)):
        u, v = odd_deg_nodes[i], odd_deg_nodes[j]
        min_dist = nx.shortest_path_length(ug, u, v, weight="length")

        # weight is negative bc we will be using "max weight matching"
        odd_edge_graph.add_edge(u, v, weight=-min_dist)
```

4) Computing the lowest cost pairing of odd-degree edges using min weight matching: 

```python
mates = nx.algorithms.max_weight_matching(odd_edge_graph, maxcardinality=True)
```

5) Add imaginary "roads" between nodes according to the lowest cost pairing from step 4: 

```python
for (v1, v2) in list(mates):
    eulerian_ug.add_edge(v1, v2, length=dist_mat[(v1, v2)])
```

Here's our roadmap after adding in the imaginary roads:

![Roadmap after pre-processing](/assets/cppshippan/post-add.png)

At this point, it is simple. We just find a Eulerian circuit for our map now that we have all even degrees. This circuit is our route. The only trick is to *replace* edges that don't exist with the shortest path between the two edges. We added "fake" edges above, so we are replacing them with the actual path between those two nodes:

```python
route = []
for edge in nx.eulerian_circuit(eulerian_ug, source=47, keys=True):  # 47 is my house
    u, v, _ = edge
    to_add = [u, v] if ug.has_edge(u, v) else shortest_path_mat[(u, v)]
    route += to_add
```

Finally, for fun I animated the route ([click here for full script](https://github.com/jschless/shippaniltonian)) and computed total distance as well as redundant distance. In total, the shortest way to see every house takes 15.2 km and with a redundancy of 2.6 km. That's a decent run!

![Final route](/assets/cppshippan/animation.gif) 

### Addendum
I also messed around with creating a Strava route for this, but it would take more work. Basically, I gave it the nodes (intersections), but it would really need waypoints along each road to construct the real route, which I didn't care to find because this would be a horribly confusing running route. I may do it someday though.