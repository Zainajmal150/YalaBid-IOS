//
//  HomePage.swift
//  Bazaar Ghar
//
//  Created by Zany on 01/08/2023.
//

import UIKit

class HomePage: UIViewController  {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!

    @IBOutlet weak var time: UILabel!
    

 
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

}
extension HomePage: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return 4
       }
       
       // make a cell for each cell index path
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           
           // get a reference to our storyboard cell
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarCell", for: indexPath as IndexPath) as! CarCell
         
           
           return cell
       }
       
       // MARK: - UICollectionViewDelegate protocol
       
       func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
           // handle tap events
           print("You selected cell #\(indexPath.item)!")
       }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.bounds.width/2, height: 200)
     }
    
    
}
