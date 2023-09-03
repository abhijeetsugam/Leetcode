class Solution 
{
    public boolean placeValidQueen(List<int []> queens, int row, int column)
    {
        for(int queen[] : queens)
        {
            int dx = Math.abs(queen[0] - row);
            int dy = Math.abs(queen[1] - column);
            if(dx == 0 || dy == 0 || dx == dy)
                return false;
        }
        return true;
    }

    public void placeQueens(char board[][], int row, List<int []> list, List<List<String>> result)
    {
        if(list.size() == board.length)
        {
            List<String> temp = new ArrayList<String>();
            for(char tmp[] : board)
                temp.add(new String(tmp));
            result.add(temp);
        }

        for(int column=0 ; column<board.length ; column++)
        {
            if(placeValidQueen(list, row, column))
            {
                board[row][column] = 'Q';
                list.add(new int[]{row, column});
                placeQueens(board, row+1, list, result);
                board[row][column] = '.';
                list.remove(list.size()-1);
            }
        }
    }



    public List<List<String>> solveNQueens(int n) 
    {
        List<List<String>> result = new ArrayList<List<String>>();
        List<int []> list = new ArrayList<int []>(); 

        char board[][] = new char[n][n];

        for(int i=0 ; i<n ; i++)
            for(int j=0 ; j<n ; j++)
                board[i][j] = '.';

        placeQueens(board, 0, list, result);

        return result;
        
    }
}