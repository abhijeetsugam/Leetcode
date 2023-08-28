# class Solution:
#     def getConcatenation(self, nums: List[int]) -> List[int]:
#         ans = []

#         for i in range(2):
#             for n in nums:
#                 ans.append(n)
        
#         return ans

# best

class Solution:
    def getConcatenation(self, nums: List[int]) -> List[int]:
        return nums * 2



#bad
# class Solution:
#     def getConcatenation(self, nums: List[int]) -> List[int]:

#         array = []

#         for i in range(len(nums)*2):
#             if i<len(nums):
#                 array.append(nums[i])
#             else:
#                 array.append(nums[i - len(nums)])
        
#         return array