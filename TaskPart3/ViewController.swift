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


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeSwitch1(_ sender: UISwitch) {
        if mySwitch1.isOn == true {
            print("-")
            let textFieldValue1 = Int(textField1.text!) ?? 0
            let conversion = -(textFieldValue1)
            textField1.text = String(conversion)
            label1.text = String(conversion)
        } else {
            print("+")
            let textFieldValue1 = Int(textField1.text!) ?? 0
            let conversion = abs(textFieldValue1)
            textField1.text = String(conversion)
            label1.text = String(conversion)
        }
    }

    @IBAction func changeSwitch2(_ sender: UISwitch) {
        if mySwitch2.isOn == true {
            print("-")
            let textFieldValue2 = Int(textField2.text!) ?? 0
            let conversion = -(textFieldValue2)
            textField2.text = String(conversion)
            label2.text = String(conversion)
        } else {
            print("+")
            let textFieldValue2 = Int(textField2.text!) ?? 0
            let conversion = abs(textFieldValue2)
            textField2.text = String(conversion)
            label2.text = String(conversion)
        }
    }
}

