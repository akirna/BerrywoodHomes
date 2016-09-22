//
//  WebsiteViewController.swift
//  Berrywood Homes
//
//  Created by Andrew Kirna on 8/5/16.
//  Copyright © 2016 Andrew Kirna. All rights reserved.
//

import UIKit

class WebsiteViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://www.berrywoodhomesllc.com")
        webView.loadRequest(URLRequest(url: url!))
    }
}
