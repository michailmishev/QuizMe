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
        
        nextQuestion()
        
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
            ProgressHUD.showSuccess("Correct")
            
        } else {
            
            print("false")
            ProgressHUD.showError("Wrong!")
            
        }
        
    }
    
    
    
    
    func nextQuestion() {
        
        if questionNumber <= allQuestions.questionsList.count - 1 {
            
            questionLabel.text = allQuestions.questionsList[questionNumber].questionText
            
            updateUI()
            
        } else {
            
            scoreLabel.text = "Score: \(score)"
            
            let alert = UIAlertController(title: "Awesome!", message: "You've finished all the questions. Do you want to try again?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                
                self.startOver()
                
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        }
        
    }
    
    
    

    
    func updateUI() {
        
        questionCounter.text = "\(questionNumber + 1) / \(allQuestions.questionsList.count)"
        
        scoreLabel.text = "Score: \(score)"
        
        progressBar.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.questionsList.count)) * CGFloat(questionNumber + 1)
        
    }
    
    
    
    
    func startOver() {
        
        questionNumber = 0
        score = 0
        nextQuestion()
        
    }
    
    
    
}








