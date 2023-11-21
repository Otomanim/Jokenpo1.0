//
//  ViewController.swift
//  Jokenpo
//
//  Created by Evandro Rodrigo Minamoto on 16/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelPlayer: UILabel!
    @IBOutlet weak var labelOpponent: UILabel!
    
    @IBOutlet weak var labelResult: UILabel!
    
    @IBOutlet weak var labelScorePlayer: UILabel!
    @IBOutlet weak var labelScoreOpponent: UILabel!
    
    @IBOutlet weak var viewPlayers: UIView!
    
    var scorePlayer: Int = 0
    var scoreOpponent: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewPlayers.isHidden = true
    }
    
    @IBAction func buttonStone(_ sender: UIButton) {
        
        viewPlayers.isHidden = false
        labelPlayer.text = "Stone"
        
        var random: Int
        random = Int.random(in: 1...3)
        
        if random == 1 {
            labelOpponent.text = "Stone"
            labelResult.text = "Tie"
        }
        else if random == 2 {
            labelOpponent.text = "Paper"
            labelResult.text = "Derrota"
            scoreOpponent += 1
            labelScoreOpponent.text = String(scoreOpponent)
        }
        else {
            labelOpponent.text = "Tesoura"
            labelResult.text = "Vitória"
            scorePlayer += 1
            labelScorePlayer.text = String(scorePlayer)
        }
        
    }
    
    @IBAction func buttonPaper(_ sender: UIButton) {
        
        viewPlayers.isHidden = false
        labelPlayer.text = "Papel"
        
        var random: Int
        random = Int.random(in: 1...3)
        
        if random == 1 {
            labelOpponent.text = "Papel"
            labelResult.text = "Tie"
        }
        else if random == 2 {
            labelOpponent.text = "Scissors"
            labelResult.text = "Derrota"
            scoreOpponent += 1
            labelScoreOpponent.text = String(scoreOpponent)
        }
        else {
            labelOpponent.text = "Stone"
            labelResult.text = "Vitória"
            scorePlayer += 1
            labelScorePlayer.text = String(scorePlayer)
        }
    }
    @IBAction func buttonScissors(_ sender: UIButton) {
        
        viewPlayers.isHidden = false
        labelPlayer.text = "Scissors"
        
        var random: Int
        random = Int.random(in: 1...3)
        
        if random == 1 {
            labelOpponent.text = "Scissors"
            labelResult.text = "Tie"
        }
        else if random == 2 {
            labelOpponent.text = "Stone"
            labelResult.text = "Derrota"
            scoreOpponent += 1
            labelScoreOpponent.text = String(scoreOpponent)
        }
        else {
            labelOpponent.text = "Papel"
            labelResult.text = "Vitória"
            scorePlayer += 1
            labelScorePlayer.text = String(scorePlayer)
        }
    }
}

