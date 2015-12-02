f = open("p083_matrix.txt")

#Pad the matrix out with a dummy top and bottom row
data = []
top_line = [ 50000 ] * 80
top_line[0] = 0
data.append(top_line)
for line in f:
	row = list(map(int, line.split(",")))
	data.append(row)

bot_line = [ 50000 ] * 80
bot_line[79] = 0
data.append(bot_line)

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

  #Step Left
  if (node[1] > 1):
    out.append((node[0], node[1] - 1))
  return out

#Standard cartesian heuristic is fine
def heuristic(a, b):
  return (b[0] - a[0]) ** 2 + (b[1] - a[1]) ** 2

def dist(b):
  return data[b[0]][b[1]]
  
def reconstruct_path(camefrom, current, path, start):
  while (current != start):
    current = camefrom[current]
    path.append(current)

#Algo pretty much straight from wikipedia
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

response = {}
astar((0, 0), (81, 79), response)
print(response)