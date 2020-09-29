//
//  ViewController.swift
//  Teki
//
//  Created by Neemko on 28/09/2020.
//

import UIKit

class ViewController: UIViewController {

    var celebrities = ["le Steve Jobs", "le Zinedine Zidane", "la Madonna", "le KArl Lagarfeld", "la Scarlett Johansson"]
    var activities = ["du dancefloor", "du barbecue", "de la surprise ratée", "des blagues lourdes", "de la raclette party"]
    @IBOutlet weak var quoteLabel: UILabel!
    @IBAction func changeQuote() {
        
        let randomIndex1 = Int(arc4random_uniform(UInt32(celebrities.count)))
        let randomCelebrity = celebrities[randomIndex1]
        
        let randomIndex2 = Int(arc4random_uniform(UInt32(activities.count)))
        let randomActivity = activities[randomIndex2]
        
        let quote = "Tu es " + randomCelebrity + " " + randomActivity + " !"
        
        quoteLabel.text = quote
    }
}

