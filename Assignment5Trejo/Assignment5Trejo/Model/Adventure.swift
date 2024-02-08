//
//  Adventure.swift
//  Assignment5Trejo
//
//  Created by Christopher Joseph on 2/7/24.
//

import Foundation

struct Adventure {
    init(_ adv: String, _ o_one:String, _ o_two: String, _ outc: String) {
        adventure = adv
        option_one = o_one
        option_two = o_two
        outcome = outc
    }
    
    var adventure: String
    var outcome: String
    var option_one: String
    var option_two: String
}
