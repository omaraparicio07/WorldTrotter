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
    
    @IBAction func FahrenheitFieldEditingChanged(_ textField:UITextField ){
        celsiusLabel.text = textField.text
    }
}
