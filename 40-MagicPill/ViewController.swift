//
//  ViewController.swift
//  40-MagicPill
//
//  Created by Brian Leip on 9/24/16.
//  Copyright © 2016 Triskelion Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var pillLabel: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successImage: UIImageView!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Massachusetts", "Maine", "New York"]
  
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeTextField.isHidden = true
    }
    
    func numberOfComponents(in: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        zipCodeLabel.isHidden = false
        zipCodeTextField.isHidden = false
    }
    
    @IBAction func buyNowBtnPressed(_ sender: AnyObject) {
        pillImage.isHidden = true
        pillLabel.isHidden = true
        price.isHidden = true
        divider.isHidden = true
        nameLabel.isHidden = true
        nameTextField.isHidden = true
        addressLabel.isHidden = true
        addressTextField.isHidden = true
        cityLabel.isHidden = true
        cityTextField.isHidden = true
        stateLabel.isHidden = true
        statePickerBtn.isHidden = true
        statePicker.isHidden = true
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeTextField.isHidden = true
        buyNowBtn.isHidden = true
        successImage.isHidden = false
    }
    

}

