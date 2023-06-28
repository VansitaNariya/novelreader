//
//  home.swift
//  novelreader
//
//  Created by R92 on 16/06/23.
//

import UIKit

class home: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var cv: UICollectionView!
    
    //var image = [UIImage(named:"1"),UIImage(named:"2"),UIImage(named:"3"),UIImage(named:"4"),UIImage(named:"5"),UIImage(named:"6"),UIImage(named:"7"),UIImage(named:"8"),UIImage(named:"9"),UIImage(named:"10"),UIImage(named:"11"),UIImage(named:"12"),("13"),UIImage(named:"14"),UIImage(named:"15"),UIImage(named:"16"),UIImage(named:"18"),UIImage(named: "19"),UIImage(named: "20")] as [Any]
    
    var image = [UIImage(named:"1"),UIImage(named:"2"),UIImage(named:"3"),UIImage(named:"4"),UIImage(named:"5"),UIImage(named:"6"),UIImage(named:"7"),UIImage(named:"8"),UIImage(named:"9"),UIImage(named:"10"),UIImage(named:"11"),UIImage(named:"12"),UIImage(named:"13"),UIImage(named:"14"),UIImage(named:"15"),UIImage(named:"16"),UIImage(named:"17"),UIImage(named:"18"),UIImage(named:"19"),UIImage(named:"20")]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "imagecell", for: indexPath) as! CollectionViewCell
        
       cell.img.image = image[indexPath.row]
    
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        
        return CGSize(width: 150, height: 150)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
  
        if indexPath.row == 0
        {
            naviget()
        }
        else {
            naviget()
        }
    }
    func naviget(){
        let n = storyboard?.instantiateViewController(withIdentifier: "storyPage1") as! storyPage1
        navigationController?.pushViewController(n, animated: true)
    }
    
}
