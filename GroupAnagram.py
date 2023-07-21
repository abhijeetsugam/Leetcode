#Leetcode: 49
#Level: Medium


#Given an array of strings strs, group the anagrams together. You can return the answer in any order.
#An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

#Example 1:
#Input: strs = ["eat","tea","tan","ate","nat","bat"]
#Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

#Example 2:
#Input: strs = [""]
#Output: [[""]]

#Example 3:
#Input: strs = ["a"]
#Output: [["a"]]

#Constraints:
#1 <= strs.length <= 104
#0 <= strs[i].length <= 100
#strs[i] consists of lower-case English letters.



from collections import defaultdict
class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        d = defaultdict(list)
        for s in strs:
            d[tuple(sorted(s))].append(s)
        return list(d.values())
    

    
#Time Complexity: O(NKlogK)
#Space Complexity: O(NK)
#N is the length of strs, and K is the maximum length of a string in strs.
#The outer loop has complexity O(N) as we iterate through each string.
#Then, we sort each string in O(KlogK) time.
#Overall, the algorithm has O(NKlogK) time complexity.


