# SET SOLUTION

# class Solution:
#     def removeDuplicates(self, nums: List[int]) -> int:
#         unique_nums = list(set(nums))
#         nums.clear()
#         nums.extend(unique_nums)
#         nums[:] = nums.sort()
#         return len(nums)

 #time compexity is better 0 (n log n ) but space :0(n)


# class Solution:
#     def removeDuplicates(self, nums: List[int]) -> int:
#         nums[:] =  sorted(set(nums))
#         return len(nums)


#time compexity is better 0 (n log n ) but space :0(n)


#Two pointer 

class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        slow ,fast = 0,1
        while fast in range (len(nums)):
            if nums[slow] == nums[fast]:
                fast +=1
            else :
                nums[slow +1 ] = nums[fast]
                slow +=1
                fast +=1
        return slow +1


