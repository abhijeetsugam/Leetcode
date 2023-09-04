class Solution:
    def searchInsert(self, nums: List[int], target: int) -> int:

        start = 0
        end = len(nums) -1 

        while start <= end :
            mid = (start + end) // 2

            if nums[mid] > target:
                end = mid - 1

            elif nums[mid] < target:
                start = mid + 1

            else:
                return mid
        return start


#My solution above- learnt solution down        


# class Solution:
#     def searchInsert(self, nums: List[int], target: int) -> int:
#         l ,r =0 , len(nums)

#         while l < r :

#             mid = (l+r) //2

#             if target > nums[mid]:
#                 l = mid +1
#             else:
#                 r= mid 
#         return l 
        

