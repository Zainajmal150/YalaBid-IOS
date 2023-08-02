
import Foundation

class LoginResponseData{


    struct LoginResponse: Codable {
        let data: DataClass
        let status: Int
        let message: String
    }

    // MARK: - DataClass
    struct DataClass: Codable {
        let user: User
        let tokens: Tokens
    }

    // MARK: - Tokens
    struct Tokens: Codable {
        let access, refresh: Access
    }

    // MARK: - Access
    struct Access: Codable {
        let token, expires: String
    }

    // MARK: - User
    struct User: Codable {
        let origin: Origin
        let fullname, email, phone: String
        let isEmailVarified, isPhoneVarified: Bool
        let userType, role, createdAt, updatedAt: String
        let refCode: String
        let v: Int
        let id: String

        enum CodingKeys: String, CodingKey {
            case origin, fullname, email, phone, isEmailVarified, isPhoneVarified, userType, role, createdAt, updatedAt, refCode
            case v = "__v"
            case id
        }
    }

    // MARK: - Origin
    struct Origin: Codable {
        let source, version: String
    }

}
// MARK: - LoginResponse
