import Foundation

extension Array where Element == Int {
    func recursiveBubbleSort() -> [Element] {
        if self.count <= 1 {
            return self
        }
        
        var newArray = self
        var sorted = true
        
        for index in 1..<newArray.count {
            if newArray[index] < newArray[index - 1] {
                newArray.swapAt(index, index - 1)
                sorted = false
            }
        }
        
        if !sorted {
            let lastIndex = newArray.count - 1
            newArray = Array(newArray[0..<lastIndex]).recursiveBubbleSort() + [newArray[lastIndex]]
        }
        
        return newArray
    }
}
