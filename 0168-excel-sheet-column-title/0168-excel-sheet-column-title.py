class Solution:
    def convertToTitle(self, columnNumber: int) -> str:
        result = ''
        while columnNumber:
            columnNumber -=1

            result = (chr(columnNumber % 26 +65)) + result

            columnNumber //= 26
        
        return result




# class Solution:
#     def convertToTitle(self, columnNumber: int) -> str:
#         result = []

#         while columnNumber:
#             columnNumber -=1

#             result.append(chr(columnNumber % 26 +65))
#             columnNumber //= 26
        
#         return ''.join(result[::-1])
#         # return ''.join(reversed(result))






# class Solution:
#     def convertToTitle(self, columnNumber: int) -> str:
#         result = []
#         while columnNumber:
#             columnNumber, rem = divmod(columnNumber -1,26)
#             result.append(chr(rem +65))
#         return ''.join(reversed(result))



