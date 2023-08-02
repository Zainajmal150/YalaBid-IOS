//
//  ViewController.swift
//  Bazaar Ghar
//
//  Created by ChAwais on 07/06/2023.
//

import UIKit

class DashboardVc: UIViewController {

    @IBOutlet weak var colView: UICollectionView!
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    

}

