//
//  ViewController4.swift
//  novelreader
//
//  Created by R92 on 13/06/23.
//

import UIKit

class ViewController4: UIViewController {
    
    @IBOutlet weak var Image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Image.layer.borderWidth = 1
        self.Image.layer.borderColor = UIColor.gray.cgColor
        self.Image.layer.masksToBounds = false
        self.Image.layer.cornerRadius = Image.frame.size.height/2
        self.Image.clipsToBounds = true
        tapgasture()
    }
    
    func tapgasture(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(getter: Image))
        Image.isUserInteractionEnabled = true
        Image.addGestureRecognizer(tap)
    }
    
    @IBAction func ButtonAction(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        self.present(imagePicker, animated: true , completion: nil)
        
    }
    
}
extension ViewController4 : UIImagePickerControllerDelegate , UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        Image.image = info[.originalImage] as? UIImage
        dismiss(animated: true , completion: nil)
        naviget()
    }
    func naviget(){
        
        let n = storyboard?.instantiateViewController(withIdentifier: "tabbar") as! tabbar
        navigationController?.pushViewController(n, animated: true)
    }
}


