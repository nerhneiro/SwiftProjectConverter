//
//  ViewController.swift
//  money_converter
//
//  Created by I on 01.06.2020.
//  Copyright © 2020 Irene Skvortsova. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func button(_ sender: UIButton) {
        let euros = [77, 1, 1.1, 0.9, 30]
        let dollars = [70, 0.9, 1, 0.8, 27]
        let rubbles = [1, 0.013, 0.014, 0.012, 0.4]
        let pounds = [86.5, 1.1, 1.25, 1, 33.5]
        let grivnas = [2.6, 0.034, 0.037, 0.03, 1]
        func MoneyConvertation(array : [Double], choice2: UILabel!, textField: UITextField!) -> String
        {
            var money = Double(textField.text ?? "0")
            switch choice2.text {
            case "в рубль": money = money! * array[0]
            case "в евро": money = money! * array[1]
            case "в доллар": money = money! * array[2]
            case "в фунт": money = money! * array[3]
            default: money = money! * array[4]
            }
            return String(round(money!*1000)/1000)
        }
        switch choice.text{
        case "Доллар": answer.text = MoneyConvertation(array: dollars, choice2: choice2, textField: textField)
        case "Евро": answer.text = MoneyConvertation(array: euros, choice2: choice2, textField: textField)
        case "Рубль":answer.text = MoneyConvertation(array: rubbles, choice2: choice2, textField: textField)
        case"Фунт": answer.text = MoneyConvertation(array: pounds, choice2: choice2, textField: textField)
        default: answer.text = MoneyConvertation(array: grivnas, choice2: choice2, textField: textField)
        }
    }
    @IBOutlet weak var choice2: UILabel!
    @IBOutlet weak var pickerview3: UIPickerView!
    @IBOutlet weak var choice: UILabel! //1 page
    @IBOutlet weak var pickerview1: UIPickerView! // 1 page
    // 1 page start
    let valutes = ["Рубль","Евро", "Доллар", "Фунт", "Гривна"]
    let results = ["в рубль","в евро", "в доллар", "в фунт", "в гривну"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {return valutes[row]}
        else{ return results[row]}
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return valutes.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0 {
            choice.text = valutes[row]
        }
        else{
            choice2.text = results[row]
        }
    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

