//
//  MoreTableViewController.swift
//  Berrywood Homes
//
//  Created by Andrew Kirna on 7/31/16.
//  Copyright © 2016 Andrew Kirna. All rights reserved.
//

import UIKit

class MoreTableViewController: UITableViewController {

    let moreOptions = SectionData().getMoreSectionsFromData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return moreOptions.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {        return moreOptions[section].items.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("More Cell", forIndexPath: indexPath)

        // Configure the cell...
        let option = moreOptions[indexPath.section].items[indexPath.row]
        cell.textLabel?.text = option
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator

        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return moreOptions[section].heading
    }
    
    // MARK: - Navigation

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selection = moreOptions[indexPath.section].items[indexPath.row]
        switch selection {
        case "Mortgage Calculator":
            let mortgageView = storyboard?.instantiateViewControllerWithIdentifier("mortgageViewController")
            showViewController(mortgageView!, sender: self)
        case "Website":
            let websiteView = storyboard?.instantiateViewControllerWithIdentifier("websiteViewController")
            showViewController(websiteView!, sender: self)
        case "Settings":
            let settingsView = storyboard?.instantiateViewControllerWithIdentifier("settingsViewController")
            showViewController(settingsView!, sender: self)
        default:
            break
        }
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
