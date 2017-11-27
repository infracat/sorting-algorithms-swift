import Foundation

let arrayCapacity = 15
let upperBound: UInt32 = 50

let randomArray = (1...arrayCapacity).map { _ in Int(arc4random_uniform(upperBound)) }
print("Random array:\n\(randomArray)")

let bubbleSortedArray = randomArray.bubbleSort()
print("Bubble sort:\n\(bubbleSortedArray)")
