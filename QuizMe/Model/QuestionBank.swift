//
//  QuestionBank.swift
//  QuizMe
//
//  Created by Michail Mishev on 12/12/17.
//  Copyright © 2017 Michail Mishev. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var questionsList = [Question]()
    
    init() {
        
        let firstQuestion = Question(text: "Lightning never strikes in the same place twice.", correctAnswer: false)
        questionsList.append(firstQuestion)
        
        questionsList.append(Question(text: "If you cry in space the tears just stick to your face.", correctAnswer: true))
        
        questionsList.append(Question(text: "If you cut an earthworm in half, both halves can regrow their body.", correctAnswer: false))
        
        questionsList.append(Question(text: "Humans can distinguish between over a trillion different smells.", correctAnswer: true))
        
        questionsList.append(Question(text: "Adults have fewer bones than babies do.", correctAnswer: true))
        
        questionsList.append(Question(text: "Goldfish only have a memory of three seconds.", correctAnswer: false))
        
        questionsList.append(Question(text: "There are more cells of bacteria in your body than there are human cells.", correctAnswer: true))
        
        questionsList.append(Question(text: "It costs the U.S. Mint more to make pennies and nickels than the coins are actually worth.", correctAnswer: true))
        
        questionsList.append(Question(text: "Water spirals down the plughole in opposite directions in the northern and southern hemispheres.", correctAnswer: false))
        
        questionsList.append(Question(text: "Buzz Aldrin was the first man to urinate on the moon.", correctAnswer: true))
        
        questionsList.append(Question(text: "Humans can’t breathe and swallow at the same time.", correctAnswer: true))
        
        questionsList.append(Question(text: "The popular image of Santa Claus – chubby, bearded, in red and white clothes – was invented by Coca-Cola for an ad campaign.", correctAnswer: false))
        
        questionsList.append(Question(text: "There are more fake flamingos in the world than real ones.", correctAnswer: true))
        
        questionsList.append(Question(text: " Drinking alcohol kills brain cells.", correctAnswer: false))
        
        questionsList.append(Question(text: "The owner of the company that makes Segways died after accidentally driving his Segway off a cliff.", correctAnswer: true))
        
        questionsList.append(Question(text: "An octopus has three hearts.", correctAnswer: true))
        
        
        
    }
    
}



