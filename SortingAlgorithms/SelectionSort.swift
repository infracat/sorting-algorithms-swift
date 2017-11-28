import Foundation

extension Array where Element == Int {
    func selectionSort() -> [Element] {
        var newArray = self
        var iteration = 0
        
        repeat {
            var minimumValueIndex = iteration
            
            for index in (iteration + 1)..<newArray.count {
                if newArray[index] < newArray[minimumValueIndex] {
                    minimumValueIndex = index
                }
            }
            
            if minimumValueIndex != iteration {
                newArray.swapAt(minimumValueIndex, iteration)
            }
            
            iteration += 1
        }
        while iteration < newArray.count
        
        return newArray
    }
}
