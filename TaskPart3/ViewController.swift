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

    @IBAction func button(_ sender: UIButton) {
        let conversion1: Int

        if mySwitch1.isOn {
            let textFieldValue1 = Int(textField1.text!) ?? 0
            conversion1 = -(textFieldValue1)
        } else {
            let textFieldValue1 = Int(textField1.text!) ?? 0
            conversion1 = textFieldValue1
        }

        label1.text = String(conversion1)

        let conversion2: Int

        if mySwitch2.isOn {
            let textFieldValue2 = Int(textField2.text!) ?? 0
            conversion2 = -(textFieldValue2)
        } else {
            let textFieldValue2 = Int(textField2.text!) ?? 0
            conversion2 = textFieldValue2
        }

        textField2.text = String(conversion2)
        label2.text = String(conversion2)

        let total = conversion1 + conversion2
        totalLabel.text = String(total)
    }
}
