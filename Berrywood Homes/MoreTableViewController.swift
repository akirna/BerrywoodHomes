//
//  MoreTableViewController.swift
//  Berrywood Homes
//
//  Created by Andrew Kirna on 7/31/16.
//  Copyright © 2016 Andrew Kirna. All rights reserved.
//

import UIKit

class MoreTableViewController: UITableViewController {

    let moreItems = SectionData().getMoreSectionsFromData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return moreItems.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {        return moreItems[section].items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "More Cell", for: indexPath)

        // Configure the cell...
        let item = moreItems[(indexPath as NSIndexPath).section].items[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = item
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return moreItems[section].heading
    }
    
    // MARK: - Navigation

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selection = moreItems[(indexPath as NSIndexPath).section].items[(indexPath as NSIndexPath).row]
        switch selection {
        case "Mortgage Calculator":
            let mortgageView = storyboard?.instantiateViewController(withIdentifier: "mortgageViewController")
            show(mortgageView!, sender: self)
        case "Website":
            let websiteView = storyboard?.instantiateViewController(withIdentifier: "websiteViewController")
            show(websiteView!, sender: self)
        case "Settings":
            let settingsView = storyboard?.instantiateViewController(withIdentifier: "settingsViewController")
            show(settingsView!, sender: self)
        default:
            break
        }
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
