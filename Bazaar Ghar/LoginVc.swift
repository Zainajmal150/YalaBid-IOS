//
//  LoginVc.swift
//  Bazaar Ghar
//
//  Created by Zany on 26/07/2023.
//

import UIKit

class LoginVc: UIViewController {
    
    @IBOutlet weak var passwordfeild: UITextField!
    @IBOutlet weak var emailfeild: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    @IBAction func loginbtn(_ sender: Any) {
        appDelegate?.GotoDashBoard()

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
