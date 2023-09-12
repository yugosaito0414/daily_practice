class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        
        if len(strs) == 0:
            return ("")
        if len(strs)  == 1:
            return (strs[0])

        #flowr 
        pref = strs[0]
        #今の所はmaxの５がplenに入ってる状態。
        plen = len(pref)

        #strs = ["flower","flow","flight"]

        #flower はいらない。
        #i はflow が最初になる
        for i in strs[1:]:

            while pref != i[0:plen]:
                pref = pref[0 : (plen -1)]
                plen -= 1 
                
                if plen == 0:
                    return ("")
        
        return (pref)
