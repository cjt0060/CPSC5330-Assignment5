//
//  ViewController.swift
//  Assignment5Trejo
//
//  Created by Christopher Joseph on 2/7/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var adventureLabel: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    
    var adventureLogic = Logic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    
    @IBAction func answerSubmitted(_ sender: UIButton) {
        
        let userChoice = sender == buttonOne ? 1 : 2
        
        if (adventureLogic.restartConditionMet()) {
            adventureLogic.restartIndex()
        } else {
            adventureLogic.incrementIndex(userChoice)
        }
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        
        switch (adventureLogic.getOutcome()) {
            case ("dead"):
                view.backgroundColor = .red
            case ("alive"):
                view.backgroundColor = .blue
            case ("neutral"):
                view.backgroundColor = .black
            default:
                break
        }
        
        
        adventureLabel.text = adventureLogic.getNextAdventure()
        buttonOne.setTitle(adventureLogic.getChoiceOne(), for: .normal)
        buttonTwo.setTitle(adventureLogic.getChoiceTwo(), for: .normal)
        
        
        
    }


}

