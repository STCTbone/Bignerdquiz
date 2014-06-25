//
//  QuizViewController.swift
//  Quiz
//
//  Created by Matthew Rieger on 6/23/14.
//  Copyright (c) 2014 Matthew Rieger. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel
    @IBOutlet var answerLabel: UILabel
    
    var currentQuestionIndex: Int = 0
    let questions: String[] = ["From what is congac made?", "What is 7+7", "What is the capital of Vermont?"]
    let answers: String[] = ["Grapes", "14", "Montpelier"]
   

    init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    
    @IBAction func showQuestion(AnyObject) {
        self.currentQuestionIndex++
        if(self.currentQuestionIndex == self.questions.count) {
            self.currentQuestionIndex = 0
        }
        
        let question = self.questions[self.currentQuestionIndex]
        self.questionLabel.text = question
        self.answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(AnyObject) {
        let answer = self.answers[self.currentQuestionIndex]
        self.answerLabel.text = answer
        
    }
}
