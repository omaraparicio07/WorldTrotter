//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Makingdevs on 15/11/19.
//  Copyright © 2019 Makingdevs. All rights reserved.
//
import UIKit

class ConversionViewController: UIViewController {
    @IBOutlet var celsiusLabel:UILabel!
    @IBOutlet var textField:UILabel!
    
    @IBAction func fahrenheitFieldEditingChanged(_ textField:UITextField ){
        //celsiusLabel.text = textField.text
        if let text = textField.text, !text.isEmpty {
            celsiusLabel.text = text
        }else {
            celsiusLabel.text = "???"
        }
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
}
