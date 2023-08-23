# solution 1 : Using strings

# class Solution:
#     def convertToTitle(self, columnNumber: int) -> str:
#         result = ''

#         while columnNumber:
#             columnNumber -= 1  # Adjust for 1-based index
#             remainder = columnNumber % 26
#             result = chr(65 + remainder) + result  
#             # 65 is the ASCII for 'A'
#             columnNumber //= 26
#         return result


#solution2 : using list 
class Solution:
    def convertToTitle(self, columnNumber: int) -> str:
        result = []
        while columnNumber:
            columnNumber -= 1
            result.append(chr((columnNumber % 26) + 65))
            columnNumber //= 26
        return ''.join(result[::-1])
        # return ''.join(reversed(result))
        #there are two ways how you can return.

'''The two solutions provided are:

Using Strings: In the first solution, I showed an approach where the result was accumulated as a string using string concatenation (result = char + result).

Using Lists: In the optimized solution, I suggested accumulating the result in a list (result.append(char)) and then converting the list to a string only once at the end using join.

Using a list and then converting it to a string at the end is typically more efficient than repeatedly concatenating strings, especially for longer sequences. This is because strings in Python are immutable, meaning every concatenation operation creates a new string, while lists are mutable, allowing for efficient append operations.'''
