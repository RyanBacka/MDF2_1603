//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]


func randomArray(count: UInt32) -> [Int]{
  var randomNumArray:[Int] = []
  for var index=0; index<=Int(count); ++index{
    var numbersMatch = "no"
    let randomNum: Int = Int(arc4random_uniform(count))
    for num in 0..<randomNumArray.count{
      if randomNumArray[num] == randomNum{
        numbersMatch = "yes"
      }
    }
    if numbersMatch == "no" {
      randomNumArray.append(randomNum)
    }
    index = randomNumArray.count
  }
  print(randomNumArray)
  return randomNumArray
}

var newArray = randomArray(UInt32(20))
