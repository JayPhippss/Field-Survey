//
//  Observation.swift
//  Field Study
//
//  Created by Jaylin Phipps on 7/20/17.
//  Copyright © 2017 Jaylin Phipps. All rights reserved.
//

import UIKit

enum Observation: String {
    case amphibian
    case bird
    case fish
    case insect
    case plant
    case mammal
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
