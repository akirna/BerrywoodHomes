//
//  SettingsTableViewController.swift
//  Berrywood Homes
//
//  Created by Andrew Kirna on 8/5/16.
//  Copyright © 2016 Andrew Kirna. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {

    let settingsItems = SectionData().getSettingsSectionsFromData()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    /*
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return settingsItems.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsItems[section].items.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return settingsItems[section].heading
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Settings Cell", forIndexPath: indexPath)

        // Configure the cell...
        let item = settingsItems[indexPath.section].items[indexPath.row]
        cell.textLabel?.text = item
        
        return cell
    }
     */
}
