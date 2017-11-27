import Foundation

extension Array where Element == Int {
    func bubbleSort() -> [Element] {
        var newArray = self
        var sorted: Bool
        
        repeat {
            sorted = true
            
            for index in 1..<newArray.count {
                if newArray[index] < newArray[index - 1] {
                    newArray.swapAt(index, index - 1)
                    sorted = false
                }
            }
        }
        while !sorted
        
        return newArray
    }
}
