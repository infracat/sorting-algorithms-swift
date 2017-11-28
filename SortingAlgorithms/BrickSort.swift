import Foundation

extension Array where Element == Int {
    func brickSort() -> [Element] {
        if self.count <= 1 {
            return self
        }
        
        var newArray = self
        var sorted = false
        
        repeat {
            sorted =
                brickSortOnce(array: &newArray, from: 1, by: 2) &&
                brickSortOnce(array: &newArray, from: 2, by: 2)
        }
        while !sorted
        
        return newArray
    }
    
    fileprivate func brickSortOnce(array: inout [Int], from startIndex: Int, by step: Int) -> Bool {
        var sorted = true
        
        for index in stride(from: startIndex, to: array.count, by: step) {
            if array[index] < array[index - 1] {
                array.swapAt(index, index - 1)
                sorted = false
            }
        }
        
        return sorted
    }
}
