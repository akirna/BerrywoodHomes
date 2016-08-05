//
//  Section.swift
//  Berrywood Homes
//
//  Created by Andrew Kirna on 8/4/16.
//  Copyright © 2016 Andrew Kirna. All rights reserved.
//

import Foundation

struct Section {
    var heading: String
    var items: [String]
    
    init(heading: String, items: [String]) {
        self.heading = heading
        self.items = items
    }
}