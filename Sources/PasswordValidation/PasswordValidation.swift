import Foundation
import RegexBuilder
@available(macOS 13.0, *)
@main
public struct PasswordValidation {

    public static func main() {
        let validation = PasswordValidation()
        let password = "123456"

        if validation.isValid(password: password) {

            print("valid password")
        } else {

            print("invalid password")
        }
    }

    func isValid(password: String) -> Bool {
        guard let regex = try? Regex("^[0-9]{6}$") else { return false}
        let range = password.ranges(of: regex)
        
        return !range.isEmpty
    }
}
