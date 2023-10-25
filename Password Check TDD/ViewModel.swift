//
//  UserValidation.swift
//  Password Check TDD
//
//  Created by Vito Borghi on 25/10/2023.
//

import Foundation

struct ViewModel {    

    func userValidation(for user: User) -> Bool{
        let userIsValid = doesUsernameExistInDatabase(for: user.username)
        let passwordIsCorrect = isPasswordCorrect(forUser: user)
        
        return userIsValid && passwordIsCorrect ? true : false
    }
    
    func isPasswordCorrect(forUser user: User) -> Bool {
        return true
    }

    func createAccount(username: String, password: String) {
        //save to db
    }
    func doesUsernameExistInDatabase(for username: String) -> Bool{
        //check if user exists in db
        return true
    }
    func newPasswordCheck(_ password: String) -> String {
        var checkFails = [String]()
        var digitCounter = 0
        var containsCapitalLetter = false
        var containtsSpecialChar = false
        
        for digit in 0...9 {
            if password.contains(String(digit)){ digitCounter += 1
            }
        }
        password.forEach { Character in
            if Character.isUppercase {
                containsCapitalLetter.toggle()
                return
            }
        }
        password.forEach { Character in
            if Character.isSymbol {
                containtsSpecialChar.toggle()
                return
            }
        }
        
        password.count<8 ? checkFails.append("Password must be at least 8 characters") : nil
        digitCounter<2 ? checkFails.append("The password must contain at least 2 numbers") : nil
        containsCapitalLetter == false ? checkFails.append("password must contain at least one capital letter") : nil
        containtsSpecialChar == false ? checkFails.append("password must contain at least one special character") : nil
        
        return checkFails.joined(separator: "\n")

    }
}
