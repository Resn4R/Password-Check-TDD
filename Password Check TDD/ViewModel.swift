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
        //password validation for TDD
        if password.count < 8 {
            return "Password must be at least 8 characters"
        }
        return "password is valid"
    }
    
}
