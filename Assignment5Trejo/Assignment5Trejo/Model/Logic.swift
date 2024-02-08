//
//  Logic.swift
//  Assignment5Trejo
//
//  Created by Christopher Joseph on 2/7/24.
//

import Foundation

struct Logic {
    
    var adventureIndex : Int = 0
    
    let adventure = [
                Adventure("you wake up in an abandoned log cabin. it is dark and cold. you see a small fire about to burn out in the fireplace. the door is propped open slightly.",
                         "stoke the fire.",
                         "close the door.",
                         "neutral"),      // 0
                
                Adventure("you stoke the fire with a stick laying next to the fireplace. the fire roars. you feel the icy breeze from the door.",
                         "sit by the fire.",
                         "close the door.",
                         "neutral"),      // 0, 1
                
                Adventure("as you close the door you lock eyes with a dark figure in the snowy treeline. it sprints towards you. you slam the door shut.",
                         "prepare to fight.",
                         "hide behind the door.",
                         "neutral"),      // 0, 2
                
                Adventure("you sit by the fire. you are no longer cold and suddenly become very drowsy. you know you need to figure out where you are.",
                         "go to sleep.",
                         "investigate outside.",
                         "neutral"),       // 1, 1
                
                Adventure("you scan the room as you close the door. there is a phone in the corner. you hear a stange noise coming from outside.",
                         "pick up the phone.",
                         "investigate the noise.",
                         "neutral"),       // 1, 2
                
                Adventure("the figure crashes through the door. it looks alien and terrifying. you throw a punch and it falls to the floor. it appears dead.",
                         "run outside.",
                         "make sure it's dead.",
                         "neutral"),       // 2, 1
                
                Adventure("you hide behind the door. the figure crashes through the door. it looks alien and terrifying. you scream and cry as it screeches at you.",
                         "pee yourself.",
                         "vomit.",
                         "neutral"),        // 2, 2
                
                Adventure("you drift off to sleep. the fire grows uncontrollable and the cabin burns down. you died.",
                         "restart.",
                         "restart.",
                         "dead"),           // 3, 1
                
                Adventure("you walk outside to gather your bearings. you see a dark figure. it shoots laser beams at you. you died.",
                         "restart.",
                         "restart.",
                         "dead"),           // 3, 2
                
                Adventure("you pick up the phone and call 911. the police come to save you. they tell you an alien was outside and they killed it. you go home to your family. you are safe.",
                         "restart.",
                         "restart.",
                         "alive"),           // 4, 1
                
                Adventure("you walk outside to investigate the noise. you see a dark figure. it shoots laser beams at you. you died.",
                         "restart.",
                         "restart.",
                         "dead"),            // 4, 2
                
                Adventure("you run outside. a vehicle is sitting nearby with keys inside. you drive away and notify authorities of the alien. you never learn what comes of the situation. you go home. you are safe.",
                         "restart.",
                         "restart.",
                         "alive"),          // 5, 1
                
                Adventure("you stomp on the alien's head and acid bursts out. it corrodes your flesh. you die. ",
                         "restart.",
                         "restart.",
                         "dead"),           // 5, 2
                
                Adventure("you pee yourself. the aliens laughs at you and goes away in disgust. you wait awhile and leave the cabin in a vehicle outside. you stay alive.",
                         "restart.",
                         "restart.",
                         "alive"),         // 6, 1
                
                Adventure("you vomit on the alien's foot and it becomes enraged. it consumes you alive. you die.",
                         "restart.",
                         "restart.",
                         "dead")           // 6, 2
                
            ]
    
    mutating func incrementIndex(_ response: Int) {
        switch (adventureIndex, response) {
            case (0, 1):
                adventureIndex = 1
            case (0, 2):
                adventureIndex = 2
            case (1, 1):
                adventureIndex = 3
            case (1, 2):
                adventureIndex = 4
            case (2, 1):
                adventureIndex = 5
            case (2, 2):
                adventureIndex = 6
            case (3, 1):
                adventureIndex = 7
            case (3, 2):
                adventureIndex = 8
            case (4, 1):
                adventureIndex = 9
            case (4, 2):
                adventureIndex = 10
            case (5, 1):
                adventureIndex = 11
            case (5, 2):
                adventureIndex = 12
            case (6, 1):
                adventureIndex = 13
            case (6, 2):
                adventureIndex = 14
            default:
                break
        }
    }
    
    func getNextAdventure() -> String {
        return adventure[adventureIndex].adventure
    }
    
    func getChoiceOne() -> String {
        return adventure[adventureIndex].option_one
    }
    
    func getChoiceTwo() -> String {
        return adventure[adventureIndex].option_two
    }
    
    func getOutcome() -> String {
        return adventure[adventureIndex].outcome
    }
    
    mutating func restartIndex() {
        adventureIndex = 0
    }
    
    func restartConditionMet() -> Bool {
        if (adventureIndex > 6) {
            return true
        } else {
            return false
        }
    }
    
}
