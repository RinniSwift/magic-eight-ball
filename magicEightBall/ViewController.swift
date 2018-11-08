//
//  ViewController.swift
//  magicEightBall
//
//  Created by Rinni Swift on 10/26/18.
//  Copyright © 2018 Rinni Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    @IBOutlet weak var eightBallImage: UIImageView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.gradientBG(colorOne: .lightPink, colorTwo: .lightPurple)
        
        
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        generateAnswers()
    }
    
    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswers()
        moveEightballImage()
        
    }
    
    func moveEightballImage() {
        UIView.animate(withDuration: 0.1, animations: {
            self.eightBallImage.frame.origin.x += 20
        }){_ in
            UIView.animateKeyframes(withDuration: 0.1, delay: 0, options: [.autoreverse], animations: {self.eightBallImage.frame.origin.x -= 20})
            UIView.animate(withDuration: 0.1, animations: {self.eightBallImage.frame.origin.x += 20}, completion: nil)
        }
     }

    func generateAnswers() {
        let indexes = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(indexes))
        
        answerLabel.text = answers[randomIndex]
    }
}

