# SET SOLUTION

# class Solution:
#     def removeDuplicates(self, nums: List[int]) -> int:
#         unique_nums = list(set(nums))
#         nums.clear()
#         nums.extend(unique_nums)
#         nums[:] = nums.sort()
#         return len(nums)

 #time compexity is better 0 (n log n ) but space :0(n)


class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        nums[:] =  sorted(set(nums))
        return len(nums)


#time compexity is better 0 (n log n ) but space :0(n)