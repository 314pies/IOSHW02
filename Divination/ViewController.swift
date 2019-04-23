//
//  ViewController.swift
//  Divination
//
//  Created by Ian Chen on 2019/4/23.
//  Copyright © 2019 Ian Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var TheName: String? = nil
    @IBOutlet weak var NameInput: UITextField!
    @IBAction func OnNameTyped(_ sender: Any) {
        TheName = NameInput.text;
    }
    
    var TheWeight:Float = 0.0
    @IBOutlet weak var Weight: UISlider!
    
    @IBOutlet weak var WeightDisplay: UILabel!
    @IBAction func OnWeightInput(_ sender: Any) {
        TheWeight = Weight.value
        WeightDisplay.text = "\(TheWeight)"
    }
    
    var TheGender : Bool = false
    
    @IBOutlet weak var GenderPicker: UISwitch!
    @IBAction func OnPickGender(_ sender: Any) {
        TheGender = GenderPicker.isOn
    }
    
    var TheDrink : Int = 1
    @IBOutlet weak var DrinkWaterPicker: UISegmentedControl!
    
    @IBAction func OnDrink(_ sender: Any) {
        TheDrink = DrinkWaterPicker.selectedSegmentIndex
    }
    var TheBirth : Date = Date.init()
    @IBAction func OnBIrth(_ sender: Any) {
        TheBirth = BirthDayPicker.date
    }
    
    @IBOutlet weak var BirthDayPicker: UIDatePicker!
    
    
    @IBOutlet weak var ResultLabel: UILabel!
    @IBAction func OnCaculateResultClicked(_ sender: Any) {
        var ResultStr : String
        ResultStr = TheName ?? "Hello World" + "\(TheWeight)" + "\(TheGender)" + "\(TheDrink)"+"\(TheBirth)"
        
        let result = ResultStr.hashValue % 5
        
        switch result {
        case 0:
            ResultLabel.text = "兇"
        case 1:
            ResultLabel.text = "末吉"
        case 2:
            ResultLabel.text = "吉"
        case 3:
            ResultLabel.text = "大吉"
        case 4:
            ResultLabel.text = "超大吉"
        default:
            ResultLabel.text = "普普"
        }
    }
    
    
}

