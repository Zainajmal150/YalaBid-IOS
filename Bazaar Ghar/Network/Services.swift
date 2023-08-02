//
//  Services.swift
//  RGB
//
//  Created by usamaghalzai on 15/11/2021.
//  Copyright © 2021 usamaghalzai. All rights reserved.
//

import Foundation
import Moya

enum Services {
    //MARK: - AUTHENTICATION
    case login(email:String,password:String)
    case dashboard(email:String,password:String)
   
}

extension Services: TargetType, AccessTokenAuthorizable {
    
    var baseURL: URL {
        switch self {
        case .live:
            return AppConstants.API.baseURL
        default:
            return AppConstants.API.baseURL
        }
        
    }
    
    var path: String {
        switch self {
        case .login:
            return "login/user"
       
        default:
            return ""
            
        }
    
    }
    
    var method: Moya.Method {
        switch self {
        case .live:
            return .get
//        case .sendPasswordResetLink,.getCompanyDetail,.getUser,.GetDownloadPDF:
//            return .get
//        case .sendPasswordResetLink,.getCompanyDetail,.getUser,.GetDownloadPDF:
//              return .put
        default:
            return .post
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case let .login(email,password):
            return .requestParameters(parameters: ["email": email,"password": password,], encoding: JSONEncoding.default)
      
        default:
            return .requestPlain
        }
    }
    
    
    var headers: [String: String]? {
        switch self{
//        case .sendPasswordResetLink,.getDevicesByProductId:
//            return ["accept":"*/*"]
//        case .GetDownloadPDF:
//        return [
//            "Content-type": "application/octet-stream",
//            "Content-Disposition":"attachment; filename=ERSheet.pdf; filename*=UTF-8''ERSheet.pdf",
//               "accept":"*/*",
//            "Retry-After": "3600"
//        ]
        default:  return [
                "Content-type": "application/json",
//                "accept":"*/*"
    //            "Retry-After": "3600"
            ]
            
        }
        
     
    }
    
    var authorizationType: AuthorizationType {
        switch self{
        case .login:
            return .none
        default:
            return .bearer
        }
    }
    
    var validationType: ValidationType{
        return .successCodes
    }
}
