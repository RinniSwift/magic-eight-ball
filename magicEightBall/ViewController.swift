//
//  ViewController.swift
//  magicEightBall
//
//  Created by Rinni Swift on 10/26/18.
//  Copyright © 2018 Rinni Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.gradientBG(colorOne: .lightPink, colorTwo: .lightPurple)
        
    }
    
    @IBAction func shakeButtonTapped(_ sender: Any) {
        
    }


}

