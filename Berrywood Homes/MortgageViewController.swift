//
//  MortgageViewController.swift
//  Berrywood Homes
//
//  Created by Andrew Kirna on 8/1/16.
//  Copyright © 2016 Andrew Kirna. All rights reserved.
//

import UIKit

class MortgageViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker: UIPickerView!
    
    let interestValues = ["10", "15", "20"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Picker View Data Source
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return interestValues.count
    }

    // MARK: - Picker View Delegate
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return interestValues[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // TODO: set text field with result of selection, show and hide upon selecting text field
    }
    
}
