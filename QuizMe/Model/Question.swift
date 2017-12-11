//
//  Question.swift
//  QuizMe
//
//  Created by Michail Mishev on 12/12/17.
//  Copyright © 2017 Michail Mishev. All rights reserved.
//

import Foundation


class Question {
    
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}

