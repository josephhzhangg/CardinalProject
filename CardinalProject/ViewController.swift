//
//  ViewController.swift
//  CardinalProject
//
//  Created by Joseph Zhang on 9/12/20.
//  Copyright © 2020 Joseph Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    let quiz = [
        Question(q: "Hello, answer True", a: "True"),
        Question(q: "Click false", a: "False")
    ]
    
    var questionNumber = 0
    
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let correctAnswer = quiz[questionNumber].answer
        if userAnswer == correctAnswer {
            print("Correct")

        } else {
            print("Incorrect")
        }
        
        //updating question
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        loadNewQuestion()
    }
    
    func loadNewQuestion() {
        questionLabel.text = quiz[questionNumber].text
    }
    
    

    @IBAction func PrimaryTaskSegue(_ sender: UIButton) {
        self.performSegue(withIdentifier: "PrimaryTaskSegue", sender: self)
    }
    
    
}

