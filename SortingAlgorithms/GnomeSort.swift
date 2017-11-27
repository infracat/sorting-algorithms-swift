import Foundation

extension Array where Element == Int {
    func gnomeSort() -> [Element] {
        var newArray = self
        var index = 1
        
        while index < newArray.count {
            if newArray[index] >= newArray[index - 1] {
                index += 1
            }
            else {
                newArray.swapAt(index, index - 1)
                
                if index > 1 {
                    index -= 1
                }
            }
        }
        
        return newArray
    }
}
