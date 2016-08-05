//
//  SectionData.swift
//  Berrywood Homes
//
//  Created by Andrew Kirna on 8/4/16.
//  Copyright © 2016 Andrew Kirna. All rights reserved.
//

import Foundation

class SectionData {
    
    func getMoreSectionsFromData() -> [Section] {
        var sectionsArray = [Section]()
        
        let business = Section(heading: "Business", items: ["Buy", "Sell", "Lend"])
        let tools = Section(heading: "Tools", items: ["Mortgage Calculator", "Website", "More Information"])
        let customizations = Section(heading: "", items: ["Settings"])
        
        sectionsArray.append(business)
        sectionsArray.append(tools)
        sectionsArray.append(customizations)
        
        return sectionsArray
    }
    
    func getSettingsSectionsFromData() -> [Section] {
        var sectionsArray = [Section]()
        
        let notifications = Section(heading: "Notifications", items: ["Get Notifications"])
        
        sectionsArray.append(notifications)
        
        return sectionsArray
    }
}