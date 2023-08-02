//
//  LoginVc.swift
//  Bazaar Ghar
//
//  Created by Zany on 26/07/2023.
//

import UIKit
import Alamofire

class LoginVc: UIViewController {
    
    @IBOutlet weak var passwordfeild: UITextField!
    @IBOutlet weak var emailFeild: UITextField!
//    @IBOutlet weak var emailfeild: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginbtn(_ sender: Any) {
        if(emailFeild.text != ""  &&  passwordfeild.text != "") {
            login(emailFeild.text!,passwordfeild.text!)
           
        }else{
            self.view.makeToast("Invalid Credentials")
        }
    }
    private func login(_ email:String,_ password:String){
        APIServices.login(email: email, password: password) {[weak self] (result) in
            switch result{
            case .success:
                self?.view.makeToast("Logged in successful")
                appDelegate?.GotoDashBoard()
                
            case .failure(let error):
                print(error)
                self?.view.makeToast(error)
            }
        }
    }
    
  
    
}
