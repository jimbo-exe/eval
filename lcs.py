def longest_common_subsequence(s1, s2):
    m, n = len(s1), len(s2)
    # Initialize the matrix with zeros
    lcs_matrix = [[0] * (n + 1) for _ in range(m + 1)]
     # Fill in the matrix by iterating over the strings
    for i in range(1, m + 1):
        for j in range(1, n + 1):
            if s1[i-1] == s2[j-1]:
                lcs_matrix[i][j] = lcs_matrix[i-1][j-1] + 1
            else:
                lcs_matrix[i][j] = max(lcs_matrix[i-1][j], lcs_matrix[i][j-1])
     # Traverse the matrix to find the longest common subsequence
    lcs = []
    i, j = m, n
    while i > 0 and j > 0:
        if s1[i-1] == s2[j-1]:
            lcs.append(s1[i-1])
            i -= 1
            j -= 1
        elif lcs_matrix[i-1][j] > lcs_matrix[i][j-1]:
            i -= 1
        else:
            j -= 1
     # Reverse the list to get the correct order of characters
    lcs.reverse()
     # Return the longest common subsequence and its length
    return ''.join(lcs), lcs_matrix[m][n]


a , b = longest_common_subsequence('abcdefgh', 'adjeghe')

print(a ,b)