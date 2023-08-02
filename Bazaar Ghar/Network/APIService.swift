//
//  Services.swift
//  RGB
//
//  Created by usamaghalzai on 15/11/2021.
//  Copyright © 2021 usamaghalzai. All rights reserved.
//

import Moya
import Foundation
import GooglePlaces
import AVFAudio
import UIKit
class APIServices{
    static let placeClient = GMSPlacesClient()
    
    class  func createRequest(url: URL) -> URLRequest {
        var request = URLRequest(url: url, timeoutInterval: Double.infinity)
        let token = UserDefaults.standard.string(forKey:AppDefault.accessToken) ?? ""
        request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        return request
    }
    class func pretty_function(_ file: String = #file, function: String = #function, line: Int = #line) {
        
        let fileString: NSString = NSString(string: file)
        if Thread.isMainThread {
            print("file:\(fileString.lastPathComponent) function:\(function) line:\(line) [M]")
        } else {
            print("file:\(fileString.lastPathComponent) function:\(function) line:\(line) [T]")
        }
    }
    
    class func login(email:String, password:String,completion:@escaping(APIResult<CurrentUser>)->Void){
        Provider.services.request(.login(email: email, password: password)) { result in
            do{
                let user: CurrentUser = try result.decoded()
                AppDefault.user = user
                CurrentUser.shared = user
                AppDefault.accessToken = /user.accessToken?.token
                AppDefault.userId = /user.id
                AppDefault.email = /user.email
                completion(.success(user))
            }catch{
                print("-----Error------ \n",error)
                completion(.failure(error.customDescription))
            }
        }
    }

}
