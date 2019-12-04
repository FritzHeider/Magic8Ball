//
//  ViewController.swift
//  MagicBall
//
//  Created by Fritz Heider on 11/23/19.
//  Copyright © 2019 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]
    

    @IBOutlet weak var shakeButton: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBOutlet weak var shakeIt: UIButton!
    

    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }

        generateAnswer()
    }

    func generateAnswer() {
        answers.shuffle()

        answerLabel.text = answers[5]
    }


}


