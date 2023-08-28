class Solution:
    def search(self, nums: List[int], target: int) -> int:

        l = 0
        r =len(nums)-1


        while l <= r:
            mid = (l+r) // 2

            if target == nums[mid]:
                return mid
            elif target <  nums[mid]:
                r = mid -1 
            else:
                l = mid + 1 
        
        return -1


# class Solution:
#     def search(self, nums: List[int], target: int) -> int:
#         # Find the insertion position `idx`.
#         idx = bisect.bisect_right(nums, target)

#         if idx > 0 and nums[idx - 1] == target:
#             return idx - 1
#         else:
#             return -1




