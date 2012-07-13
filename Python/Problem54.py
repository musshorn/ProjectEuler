def handv(hand):
	"""
	Return values, First digit is the hand type, second digit is the "value" ie 4 8's, 3rd digit is the highcard
	hand types: 
	
	10. High Card: Highest value card.
	9. One Pair: Two cards of the same value.
	8. Two Pairs: Two different pairs.
	7. Three of a Kind: Three cards of the same value.
	6. Straight: All cards are consecutive values.
	5. Flush: All cards of the same suit.
	4. Full House: Three of a kind and a pair.
	3. Four of a Kind: Four cards of the same value.
	2. Straight Flush: All cards are consecutive values of same suit.
	1. Royal Flush: Ten, Jack, Queen, King, Ace, in same suit.
	
	"""
	dict = { 'A' : 14, '2' : 2, '3' : 3, '4' : 4, '5' : 5, '6' : 6, '7' : 7, '8' : 8, '9' : 9, 'T' : 10, 'J' : 11, 'Q' : 12, 'K' : 13}
	p1 = []

	for i in range(0,5):
		p1.append(hand[i])
	c1 = p1[0]
	c2 = p1[1]
	c3 = p1[2]
	c4 = p1[3]
	c5 = p1[4]

	clist = [c1[0],c2[0],c3[0],c4[0],c5[0]]
	
	p1index = set()
	p1index.add(dict[c1[0]])
	p1index.add(dict[c2[0]])
	p1index.add(dict[c3[0]])
	p1index.add(dict[c4[0]])
	p1index.add(dict[c5[0]])


	#Check Player for royal flush
	if c1[1] == c2[1] and  c2[1] == c3[1] and c3[1] == c4[1] and c4[1] == c5[1]:
		if len(p1index.intersection('A')) == 1 and len(p1index.intersection('K')) == 1 and len(p1index.intersection('Q')) == 1 and len(p1index.intersection('J')) == 1 and len(p1index.intersection('T')) == 1:
			return 1,1

	
	#Check player for Straight Flush
	if c1[1] == c2[1] and  c2[1] == c3[1] and c3[1] == c4[1] and c4[1] == c5[1]:
		temp = p1index
		check = min(temp)
		temp.remove(check)
		if min(temp) - check == 1:
			check = min(temp)
			temp.remove(check)
			if min(temp) - check == 1:
				check = min(temp)
				temp.remove(check)
				if min(temp) - check == 1:
					check = min(temp)
					temp.remove(check)
					if min(temp) - check == 1:
						return 2,min(temp)
							
	#Check Player for 4 of a kind
	if clist.count(c1[0]) == 4 or clist.count(c2[0]) == 4:
		return 3,max(dict[c1[0]],dict[c2[0]])
	
	#full house
	if clist.count(c1[0]) == 3 or clist.count(c2[0]) == 3 or clist.count(c3[0]) == 3:
		if clist.count(c1[0]) == 2 or clist.count(c2[0]) == 2 or clist.count(c3[0]) == 2 or clist.count(c4[0]) == 2:
			return 4,max(dict[c1[0]],dict[c2[0]],dict[c3[0]])
	
	#flush
	if c1[1] == c2[1] and  c2[1] == c3[1] and c3[1] == c4[1] and c4[1] == c5[1]:
		return 5,max(dict[c1[0]],dict[c2[0]],dict[c3[0]],dict[c4[0]],dict[c5[0]])
	
	#straight
	temp = p1index
	if len(temp) == 5:
		check = min(temp)
		temp.remove(check)
		if min(temp) - check == 1:
			check = min(temp)
			temp.remove(check)
			if min(temp) - check == 1:
				check = min(temp)
				temp.remove(check)
				if min(temp) - check == 1:
					check = min(temp)
					temp.remove(check)
					if min(temp) - check == 1:
						return 6,min(temp)
	
	#three of a kind
	if clist.count(c1[0]) == 3 or clist.count(c2[0]) == 3 or clist.count(c3[0]) == 3:
		return 7,max(dict[c1[0]],dict[c2[0]],dict[c3[0]])
	
	#two pair, hard to determine max. awkward.
	m = []
	if clist.count(c1[0]) == 2:
		temp = clist[1:]
		m = [c1[0]]

			
	if clist.count(c2[0]) == 2:
		m = [c2[0]]+m
		temp = [clist[0]]+clist[2:]

			
	if clist.count(c3[0]) == 2:
		m = [c3[0]]+m
		temp = clist[0:1]+clist[3:]

			
	if clist.count(c4[0]) == 2:
		m = [c4[0]]+m
		temp = clist[0:2]+clist[4:]

	if clist.count(c5[0]) == 2:
		m = [c5[0]]+m
		temp = clist[0:4]
	
	if len(m) == 4:
		return 8,max(dict[m[0]],dict[m[1]],dict[m[2]],dict[m[3]])
    
			
	#pair
	if len(m) == 2:
		return 9,max(dict[m[0]],dict[m[1]])
		
	#highcard
	return 10,max(dict[c1[0]],dict[c2[0]],dict[c3[0]],dict[c4[0]],dict[c5[0]])
	
p1total = 0
p2total = 0
f = open('poker.txt')

for line in f:
	game = line.split()
	p1score = handv(game[0:5])
	p2score = handv(game[5:10])

	if p1score[0] < p2score[0]:
		p1total = p1total + 1
	elif p1score[0] == p2score[0] and p1score[1] > p2score[1]:
		p1total = p1total + 1
	else:
		p2total = p2total + 1
print "player 1 total wins: "
print p1total