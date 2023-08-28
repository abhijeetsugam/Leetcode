# class Solution:
#     def removeElement(self, nums: List[int], val: int) -> int:
       
#         position = 0 

#         for n in nums:
#             if n != val:
#                 nums[position] = n
#                 position +=1

#         return position


#last time solution 
# class Solution:
#     def removeElement(self, nums: List[int], val: int) -> int:
#         l =0 
#         for i in range (len(nums)):
#             if nums[i]!= val:
#                 nums[l]= nums[i]
#                 l += 1
#         return l
                

#bekar solution 0n2
# class Solution:
#     def removeElement(self, nums: List[int], val: int) -> int:
#         while val in nums: nums.remove(val)

                
#zindagi ka pehla pyaar

class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:

        idx = 0
        i = 0

        while i in range(len(nums)):

            if  nums[i] != val:
                nums[idx] = nums[i]
                idx +=1
            i +=1
            
        return idx
                


