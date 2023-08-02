//
//  LoginResponse.swift
//  RGB
//
//  Created by Usama on 20/11/2021.
//


//   var loginResponse = try? newJSONDecoder().decode(LoginResponse.self, from: jsonData)

import Foundation
enum AccountType {
    case customer
    case business
}
// MARK: - CurrentUser
struct CurrentUser: Codable {
    var id, email, firstName, lastName: String?
    var address: String?
    var cityID: String?
    var city: String?
    var countryID: String?
    var country: String?
    var stateID: String?
    var state, zipCode, phoneNo, role: String?
    var customerType: Int?
    
    var companyId:Int?
    var companyName:String?
    var isAdmin:Bool?
    var website:String?
    var accessToken: AccessToken?
    var password:String = ""
    var groupId:Int?
    var accountType:AccountType {
        //FIXME:- Temp condition for business account handling
        //        return self.customerType == 0 ? .customer : .business
        //Actual condition
        return self.customerType == 2 ? .customer : .business
    }
    var userName:String {
        return (/self.firstName + /self.lastName)
    }
    var fullName:String {
        return (/self.firstName + " " + /self.lastName)
    }
    var fullNameWithNewLine:String {
        return (/self.firstName + "\n" + /self.lastName)
    }
    var initials:String {
        if let f1 = self.firstName?.first,
           let f2 = self.lastName?.first {
            return "\(f1)\(f2)"
        }
        return "NA"
    }
    enum CodingKeys: String, CodingKey {
        case id, email, firstName, lastName, address
        case cityID = "cityId"
        case city
        case countryID = "countryId"
        case country
        case stateID = "stateId"
        case state, zipCode, phoneNo, role, customerType, accessToken
        case companyId, companyName, isAdmin, website,groupId
    }
    public static var shared: CurrentUser!
}
// MARK: - AccessToken
struct AccessToken: Codable {
    var token, expiry: String
}


struct UserInfo: Codable {
    let id, email: String?
    let password, confirmEmail, confirmPassword: String?
    let firstName, lastName, phoneNumber, address: String?
    let city, country, state: String?
    let zipCode: String?
    let groupID: Int?
    let customerTypeName: String?
    let companyID: Int?
    let image: String?
    let isFavourite, isAdmin: Bool?
    let rating, userName: String?
    let emailConfirmed: Bool?
    let stateName, countryName, cityName :String?
//    let policies: [JSONAny]?
//    let latitude, longitude, type, isAAVDeals: JSONNull?
//    let isSupportMessages: JSONNull?
    
    enum CodingKeys: String, CodingKey {
        case id, email, password, confirmEmail, confirmPassword, firstName, lastName, phoneNumber, address, city, country, state, zipCode
        case groupID = "groupId"
        case customerTypeName
        case companyID = "companyId"
        case image, isFavourite, isAdmin, rating, userName, emailConfirmed
        //, policies, latitude, longitude, type, isAAVDeals, isSupportMessages
        case stateName = "stateName"
        case countryName = "countryName"
        case cityName = "cityName"
    }
    var fullName:String? {
        return (self.firstName ?? "") + " " + (self.lastName ?? "")
    }
    var nameInitials:String{
        return String(self.firstName?.first ?? " ") + String(self.lastName?.first ?? " ")
    }
    func encodeToDict() -> Dictionary<String,Any>{
        var dict = try? JSONSerialization.jsonObject(with: try JSONEncoder().encode(self), options: []) as? [String: Any]
        return dict!
    }
}
