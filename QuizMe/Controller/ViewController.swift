//
//  ViewController.swift
//  QuizMe
//
//  Created by Michail Mishev on 11/12/17.
//  Copyright © 2017 Michail Mishev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let allQuestions = QuestionBank()
    var score: Int = 0
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionCounter: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let firstQuestion = allQuestions.questionsList[0]
        questionLabel.text = firstQuestion.questionText
        
        
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber += 1
        
        nextQuestion()
        
    }
    
    
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.questionsList[questionNumber].answer
        
        if pickedAnswer == correctAnswer {
            score += 1
            print("true")
            //show green thick
        } else {
            print("false")
            //show red x
        }
        
    }
    
    
    
    
    func nextQuestion() {
        
        questionLabel.text = allQuestions.questionsList[questionNumber].questionText
        
        updateUI()
        
    }
    
    
    

    
    func updateUI() {
        
        questionCounter.text = "\(questionNumber) / 12"
        
        scoreLabel.text = "\(score)"
        
        progressBar.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.questionsList.count)) * CGFloat(questionNumber)
        
    }
    
    
    
    
    
}

