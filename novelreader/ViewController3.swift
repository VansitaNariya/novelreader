//
//  ViewController3.swift
//  novelreader
//
//  Created by R92 on 13/06/23.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var firstNameTextfield: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameTextfield.layer.borderWidth = 2
        firstNameTextfield.layer.cornerRadius = 20
        firstNameTextfield.layer.borderColor = UIColor.gray.cgColor
        firstNameTextfield.layer.masksToBounds = false
        lastNameTextField.layer.borderWidth = 2
        lastNameTextField.layer.cornerRadius = 20
        lastNameTextField.layer.borderColor = UIColor.gray.cgColor
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.cornerRadius = 20
        passwordTextField.layer.borderColor = UIColor.gray.cgColor
        signupButton.layer.borderWidth = 2
        signupButton.layer.cornerRadius = 20
        signupButton.layer.borderColor = UIColor.gray.cgColor
        signupButton.layer.masksToBounds = false
        
    }
    
    @IBAction func SignUpButton(_ sender: UIButton) {
        if firstNameTextfield.text == "" && lastNameTextField.text == "" && passwordTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please fill every Details.", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
            alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
            present(alert,animated: true,completion: nil)
        }
        else if firstNameTextfield.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please Enter your First Name.", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
            alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
            present(alert,animated: true,completion: nil)
        }
        else if lastNameTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please Enter your Last Name.", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
            alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
            present(alert,animated: true,completion: nil)
        }
        else if passwordTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please Enter your Password.", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
            alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
            present(alert,animated: true,completion: nil)
        }
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewController4") as! ViewController4
        navigationController?.pushViewController(n, animated: true)
    }
    
    
}
