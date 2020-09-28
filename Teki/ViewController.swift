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
        var randomIndex1 = Int(arc4random_uniform(UInt32(celebrities.count)))
        var randomCelebrity = celebrities[randomIndex1]
        print(randomCelebrity)
        
        var randomIndex2 = Int(arc4random_uniform(UInt32(activities.count)))
        var randomActivity = activities[randomIndex2]
        print(randomActivity)
        
        quoteLabel.text = "Le texte est modifié !"
    }
}

