//
//  main.swift
//  GPA calculator
//
//  Created by 劉學逸 on 1/25/21.
//

import Foundation

var courses = [Course]()

while true {
    var newCourse = Course(name: "", score: "F", credit: 0)
    print("Enter course name (type \"EXIT\" to exit):")
    newCourse.name = readLine()!
    if newCourse.name.uppercased() == "EXIT" {
        break;
    }
    print("Enter course credit:")
    newCourse.credit = Double(readLine()!)!
    print("Enter course score:")
    newCourse.score = readLine()!.uppercased()
    if scoreScale[newCourse.score] != nil {
        courses.append(newCourse)
        print("Course added")
    } else {
        print("Invalid score, please retry")
    }
}

print("Chose Scale:\n[1] 4.0 [2] 4.3")
let input = readLine()
var scale: gpaScaleType
if let input = Int(input!) {
    scale = (input == 1 ? gpaScaleType.four : gpaScaleType.fourPointThree)
} else {
    print("Input Error")
    exit(0)
}

switch scale {
case .four:
    scoreScale["A+"] = 4.0
case .fourPointThree:
    scoreScale["A+"] = 4.3
}

var totalWeightedScore = 0.0
var totalCredit = 0.0

for course in courses {
    totalWeightedScore += scoreScale[course.score]! * course.credit
    totalCredit += course.credit
}

print("Total Credits: \(totalCredit)")
print("Average Score: \(totalWeightedScore / totalCredit)")

