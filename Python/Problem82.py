import math
f = open("p082_matrix.txt")
data = []
for line in f:
  row = []
  nums = line.split(",")
  for n in nums:
    row.append(int(n))
  data.append(row)


def neighbours(node):
  out = []

  #Step Up
  if (node[0] > 1):
    out.append((node[0] - 1, node[1]))

  #Step Down
  if (node[0] < len(data) - 1):
    out.append((node[0] + 1, node[1]))

  #Step Right
  if (node[1] < len(data[0]) - 1):
    out.append((node[0], node[1] + 1))

  return out

def heuristic(a, b):
  return (b[0] - a[0]) ** 2 + (b[1] - a[1]) ** 2

def dist(b):  # i dunno scoob
  return data[b[0]][b[1]]
  
def reconstruct_path(camefrom, current, path, start):
  while (current != start):
    current = camefrom[current]
    path.append(current)

def astar(start, end, outcome):
  closed = set()
  openset = set()
  openset.add(start)
  camefrom = {}
  
  gscore = {}
  gscore[start] = 0

  current = start

  fscore = {}
  fscore[current] = gscore[start] + heuristic(start, end)
  outcome['cost'] = 9999999999999

  
  
  while len(openset) > 0:
    score = 99999000000000
    for i in openset:
      if fscore[i] < score:
        score = fscore[i]
        current = i

    if current == end:
      path = []
      reconstruct_path(camefrom, end, path, start)
      path.reverse()
      path.append(end)
      outcome['path'] = path
      total = 0
      for point in path:
        total += data[point[0]][point[1]]
      outcome['cost'] = total

      break

    openset.remove(current)
    closed.add(current)
    for n in neighbours(current):
      if n in closed:
        continue

      tenativeg = gscore[current] + dist(n)

      if n not in openset or tenativeg < gscore[n]:
        camefrom[n] = current
        gscore[n] = tenativeg
        fscore[n] = gscore[n] + heuristic(n, end)
        if n not in openset:
          openset.add(n)

    
bestpath = []
bestcost = 10000000000

for i in range(80):
  for j in range(80):
    response = {}
    astar((i, 0), (j, 79), response)

    if (response['cost'] < bestcost):
      bestcost = response['cost']
      bestpath = response['path']
      print bestcost, i, j

print bestcost
for i in bestpath:
  print i[0], i[1]