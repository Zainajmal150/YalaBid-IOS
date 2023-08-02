//
//  AppDelegate.swift
//  Bazaar Ghar
//
//  Created by ChAwais on 07/06/2023.
//

import UIKit
import IQKeyboardManagerSwift
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        IQKeyboardManager.shared.enable = true
                IQKeyboardManager.shared.shouldResignOnTouchOutside = true
                IQKeyboardManager.shared.shouldPlayInputClicks = true
                IQKeyboardManager.shared.shouldShowToolbarPlaceholder = false
                IQKeyboardManager.shared.enableDebugging = true
        return true
    }
    func gotoSignInVc(){
        let loginclass = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginVc") as!LoginVc
        let navController = UINavigationController(rootViewController: loginclass)// Integrate n
        
        let appdelegate = UIApplication.shared.delegate as! AppDelegate
        appdelegate.window?.rootViewController = loginclass
        UIApplication.shared.windows.first?.rootViewController = loginclass
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    func GotoDashBoard(){
        let loginclass = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomePage") as!HomePage
        
        let navController = UINavigationController(rootViewController: loginclass)// Integrate navigation controller programmatically if you want
        let appdelegate = UIApplication.shared.delegate as! AppDelegate
        appdelegate.window?.rootViewController = navController
        UIApplication.shared.windows.first?.rootViewController = navController
        UIApplication.shared.windows.first?.makeKeyAndVisible()
        
        
        
        
        
    }
 

}

let appDelegate = UIApplication.shared.delegate as? AppDelegate
