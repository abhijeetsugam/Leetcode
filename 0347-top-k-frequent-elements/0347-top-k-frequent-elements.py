#Best_soln # 0(n) # twisted bucket


class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:

        count = {}
        freq = [[] for i in range(len(nums)+1)]

        for n in nums:
            count[n] = 1 + count.get(n,0) 
        for n,c in count.items():
            freq[c].append(n)

        res = []
        for i in range(len(freq)-1,0,-1):
            for n in freq[i]:
                res.append(n)
                if len(res) == k:
                    return res





#Bucket_soln

# from collections import Counter

# class Solution:
#     def topKFrequent(self, nums: List[int], k: int) -> List[int]:
#         # Count the frequency of each number
#         count = Counter(nums)
        
#         # Initialize an array of empty lists for the bucket sort
#         buckets = [[] for _ in range(len(nums) + 1)]
#         print(buckets)
        
#         # Add each number to its corresponding frequency bucket
#         for num, freq in count.items():
#             buckets[freq].append(num)
        
#         # Flatten the bucket array into a single list and get the last k elements
#         flat_list = [num for bucket in reversed(buckets) for num in bucket]
        
#         return flat_list[:k]

#EASY

# from collections import Counter
# from typing import List


# class Solution:
#     def topKFrequent(self, nums: List[int], k: int) -> List[int]:
#         # Create a Counter object to count the frequency of each element in nums
#         count = Counter(nums)
        
#         # Use the most_common method to get the k most common elements
#         k_most_common = count.most_common(k)
        
#         # Extract only the elements (not their counts) and return them
#         return [element for element, count in k_most_common]


# All three solutions have a space complexity of O(n).

# The Best_soln and Bucket_soln have the same time complexity of O(n), while the EASY solution has a slightly higher time complexity of O(nlogk). 