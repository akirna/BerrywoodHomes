//
//  HomeTableViewController.swift
//  Berrywood Homes
//
//  Created by Andrew Kirna on 7/26/16.
//  Copyright © 2016 Andrew Kirna. All rights reserved.
//

import UIKit
import TwitterKit

class HomeTableViewController: TWTRTimelineViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    ///
    /// Set up Twitter timeline and view colors.
    ///
    func configureView() {
        let berrywoodColor = UIColor(red: 246/255, green: 40/255, blue: 23/255, alpha: 1.0)
        let client = TWTRAPIClient()
        self.dataSource = TWTRUserTimelineDataSource(screenName: "archdigest", APIClient: client)
        TWTRTweetView.appearance().backgroundColor = UIColor.lightGrayColor()
        TWTRTweetView.appearance().linkTextColor = berrywoodColor
        TWTRTweetView.appearance().primaryTextColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "berrywoodhomesbanner"), forBarMetrics: .Default)
    }
    
    // MARK: - Table view data source
    
    /*
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        /*
        let vcName =
        let viewController = storyboard?.instantiateViewControllerWithIdentifier(vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)
        */
     }
     */

    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 
}
