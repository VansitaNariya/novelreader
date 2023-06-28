//
//  ViewController2.swift
//  novelreader
//
//  Created by R92 on 12/06/23.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var fb: UILabel!
    @IBOutlet weak var google: UILabel!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var start: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        fb.layer.borderWidth = 2
        fb.layer.cornerRadius = 30
        fb.layer.borderColor = UIColor.gray.cgColor
        google.layer.borderWidth = 2
        google.layer.cornerRadius = 30
        google.layer.borderColor = UIColor.gray.cgColor
        email.layer.borderWidth = 2
        email.layer.cornerRadius = 20
        email.layer.borderColor = UIColor.gray.cgColor
        start.layer.borderWidth = 2
        start.layer.cornerRadius = 35
        start.layer.borderColor = UIColor.gray.cgColor
    }
    @IBAction func getstartButton(_ sender: UIButton) {
        if email.text == ""  {
            let alert = UIAlertController(title: "Error", message: "Please Enter your Email.", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
            alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
            present(alert,animated: true,completion: nil)
        }
        else {
            let n = storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
            
            navigationController?.pushViewController(n, animated: true)
        }
    }
    
    
    
}
