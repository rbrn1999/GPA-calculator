//
//  scale.swift
//  GPA calculator
//
//  Created by 劉學逸 on 1/25/21.
//

import Foundation

enum gpaScaleType {
    case four, fourPointThree
}
var scoreScale = [ "A+" : 4.0, "A" : 4.0, "A-" : 3.7,
                   "B+" : 3.7, "B" : 3.0, "B-" : 2.7,
                   "C+" : 2.7, "C" : 2.0, "C-" : 1.7,
                   "D+" : 1.7, "D" : 1.0, "D-" : 0.7,
                   "E" : 0, "F" : 0 ]

