class Solution:
    def isPalindrome(self, s: str) -> bool:
               
        i, j = 0, len(s) - 1
              
        while i < j:          
            if not s[i].isalnum():
                i += 1
            elif not s[j].isalnum():
                j -= 1
            elif s[i].lower() != s[j].lower():
                return False
            else:
                i += 1
                j -= 1
        return True

        

        # i starts at beginning of s and j starts at the end  
        # While i is still before j  
        # If i is not an alpha-numeric character then advance i  
        # If j is not an alpha-numeric character then advance j
        # Both i and j are alpha-numeric characters at this point so if they do not match return the fact that input was non-palendromic
        # Otherwise characters matched and we should look at the next pair of characters
        # The entire stirng was verified and we return the fact that the input string was palendromic   