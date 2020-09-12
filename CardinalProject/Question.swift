//
//  Question.swift
//  CardinalProject
//
//  Created by Joseph Zhang on 9/12/20.
//  Copyright © 2020 Joseph Zhang. All rights reserved.
//

import Foundation

struct Question {
    
    let text : String
    let answer : String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
