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
    @IBOutlet weak var answerLabel: UILabel!
    
    let interestValues = ["10", "15", "20"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    ///
    /// Calcualtes the monthly mortgage payment using the entered data.
    ///
    /// return - the monthly payment
    ///
    func calculateMonthlyPayment(_ principal: Int, rate: Double, numPayments: Int) -> Double {
        let numerator = rate * Double(principal) * pow((1 + rate), Double(numPayments))
        let denominator = pow((1 + rate), Double(numPayments)) - 1
        let payment = numerator/denominator
        return payment
    }
    
    ///
    /// Responds to a tap on the Calculate button.
    ///
    @IBAction func calculateButtonTapped(_ sender: AnyObject) {
        /*
         // fix values
        let payment = calculateMonthlyPayment(10000, rate: 0.12, numPayments: 36)
        answerLabel.text = String(payment)
         */
    }
    
    // MARK: - Picker View Data Source
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return interestValues.count
    }

    // MARK: - Picker View Delegate
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return interestValues[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // TODO: set text field with result of selection, show and hide upon selecting text field
    }
    
}
