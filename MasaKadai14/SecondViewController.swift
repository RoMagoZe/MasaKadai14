//
//  SecondViewController.swift
//  MasaKadai14
//
//  Created by Mina on 2023/05/19.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet private weak var inputTextField: UITextField!

    // inputTextFieldの値を反映させるメソッド
    func getInputText() -> String {
        return inputTextField.text ?? ""
    }
}
