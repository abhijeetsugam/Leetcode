from collections import defaultdict


# class Solution:
#     def groupAnagrams(self, strs: List[str]) -> List[List[str]]:


#         d = defaultdict(list)

#         for s in strs:
#             d[tuple(sorted(s))].append(s)
#         return d.values()


#slightly better solution

class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:

        d = defaultdict(list)

        for s in strs:
            count = [0]*26

            for c in s:

                count[ord(c) - ord('a')] +=1

            d[tuple(count)].append(s)

        return d.values()




















        


