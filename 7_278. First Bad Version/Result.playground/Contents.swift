// https://leetcode.com/problems/first-bad-version/
// Uses external API from leetcode and cannot be launched here

func firstBadVersion(_ n: Int) -> Int {
    var leftBound = 0
    var rightBound = n
    var lastBad = n
    
    while leftBound <= rightBound {
        var middle = (leftBound + rightBound) / 2
        
        if isBadVersion(middle) {
            lastBad = middle
            rightBound = middle - 1
        } else {
            leftBound = middle + 1
        }
    }
    return lastBad
}
