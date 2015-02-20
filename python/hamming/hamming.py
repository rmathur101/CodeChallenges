# class Hamming(object):
# 	def _distance_(self, strand1, strand2):
# 		hamming = 0
# 		for index in range(0, strand1.len()):
# 			if strand1[index] != strand2[index]:
# 				hamming += 1
# 		return hamming


def distance(strand1, strand2):
	hamming = 0
	for index in range(0, len(strand1)):
		if strand1[index] != strand2[index]:
			hamming += 1
	return hamming