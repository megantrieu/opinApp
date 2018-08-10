//
//  ViewController.swift
//  Opin
//
//  Created by Apple on 8/6/18.
//  Copyright © 2018 C_Laugharn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {


    @IBOutlet weak var stylePicker: UIPickerView!
    var styles = ["Sporty", "Chic", "Goth"]
    
//    var pickerData: [String] = [String]()
//    var pickerData = ["Sporty", "Girly"]
    var name: String = ""
    var age: String = ""
    
    
    
    @IBOutlet weak var nameInput: UITextField!
    
    @IBOutlet weak var ageInput: UITextField!
    
    @IBAction func loginButton(_ sender: UIButton) {
        name = nameInput.text!
        age = ageInput.text!
        
        
    }

override func viewDidLoad() {
        super.viewDidLoad()
    
       // Connect data:
        stylePicker.delegate = self
        stylePicker.dataSource = self
//
//        // Input data into the Array:
//        pickerData = ["Sporty", "Girly"]
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
    

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return styles[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return styles.count
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    


}
