//
//  ViewController.swift
//  novelreader
//
//  Created by R92 on 12/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var getstarted: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        getstarted.layer.borderWidth = 2
        getstarted.layer.cornerRadius = 30
        getstarted.layer.borderColor = UIColor.gray.cgColor
        
    }
    
    @IBAction func startedButoon(_ sender: UIButton) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        
        navigationController?.pushViewController(n, animated: true)
    }
    
    
}

