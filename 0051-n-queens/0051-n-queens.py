from typing import List

class Solution:
    
    def placeValidQueen(self, queens: List[List[int]], row: int, column: int) -> bool:
        for queen in queens:
            dx = abs(queen[0] - row)
            dy = abs(queen[1] - column)
            if dx == 0 or dy == 0 or dx == dy:
                return False
        return True

    def placeQueens(self, board: List[List[str]], row: int, queens: List[List[int]], result: List[List[str]]) -> None:
        if len(queens) == len(board):
            temp = [''.join(row) for row in board]
            result.append(temp)

        for column in range(len(board)):
            if self.placeValidQueen(queens, row, column):
                board[row][column] = 'Q'
                queens.append([row, column])
                self.placeQueens(board, row + 1, queens, result)
                board[row][column] = '.'
                queens.pop()

    def solveNQueens(self, n: int) -> List[List[str]]:
        result = []
        queens = []
        
        board = [['.' for _ in range(n)] for _ in range(n)]
        
        self.placeQueens(board, 0, queens, result)
        
        return result

# Test the code
sol = Solution()
print(sol.solveNQueens(4))
        