//
//  ViewController.swift
//  novelreader
//
//  Created by R92 on 12/06/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startedButoon(_ sender: UIButton) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
      
              navigationController?.pushViewController(n, animated: true)
    }
    
}

