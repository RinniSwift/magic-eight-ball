//
//  ViewControllerTwo.swift
//  magicEightBall
//
//  Created by Rinni Swift on 10/27/18.
//  Copyright © 2018 Rinni Swift. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerTwo: UIViewController {
    
    let startups = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]
    let ideas = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]
    
    @IBOutlet weak var startupLabel: UILabel!
    @IBOutlet weak var ideaLabel: UILabel!
    @IBOutlet weak var ideaGeneratorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.gradientBG(colorOne: .lightPink, colorTwo: .lightPurple)
        
    }
    
    @IBAction func ideaGeneratorTapped(_ sender: Any) {
        
        generateIdeas(list: startups, label: startupLabel)
        generateIdeas(list: ideas, label: ideaLabel)
        
    }
    
    func generateIdeas(list: [String], label: UILabel) {
        let indexes = UInt32(list.count)
        let randomIndex = Int(arc4random_uniform(indexes))
        label.text = list[randomIndex]

    }
    
}
