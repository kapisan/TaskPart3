//
//  ViewController.swift
//  TaskPart3
//
//  Created by niwa  shuhei on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var mySwitch1: UISwitch!
    @IBOutlet private weak var mySwitch2: UISwitch!
    @IBOutlet private weak var label1: UILabel!
    @IBOutlet private weak var label2: UILabel!
    @IBOutlet private weak var totalLabel: UILabel!

    var conversion1: Int? = nil
    var conversion2: Int? = nil

    @IBAction func changeSwitch1(_ sender: UISwitch) {
        if mySwitch1.isOn == true {
            let textFieldValue1 = Int(textField1.text!) ?? 0
            conversion1 = -(textFieldValue1)
            textField1.text = String(conversion1!)
            label1.text = String(conversion1!)
        } else {
            let textFieldValue1 = Int(textField1.text!) ?? 0
            conversion1 = abs(textFieldValue1)
            textField1.text = String(conversion1!)
            label1.text = String(conversion1!)
        }
    }

    @IBAction func changeSwitch2(_ sender: UISwitch) {
        if mySwitch2.isOn == true {
            let textFieldValue2 = Int(textField2.text!) ?? 0
            conversion2 = -(textFieldValue2)
            textField2.text = String(conversion2!)
            label2.text = String(conversion2!)
        } else {
            let textFieldValue2 = Int(textField2.text!) ?? 0
            conversion2 = abs(textFieldValue2)
            textField2.text = String(conversion2!)
            label2.text = String(conversion2!)
        }
    }

    @IBAction func button(_ sender: UIButton) {
        let textFieldValue1 = Int(textField1.text!) ?? 0
        let textFieldValue2 = Int(textField2.text!) ?? 0

        conversion1 = textFieldValue1
        conversion2 = textFieldValue2

        label1.text = String(conversion1!)
        label2.text = String(conversion2!)
        let total = conversion1! + conversion2!
        totalLabel.text = String(total)
    }
}
