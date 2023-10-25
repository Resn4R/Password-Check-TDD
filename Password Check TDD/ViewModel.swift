//
//  UserValidation.swift
//  Password Check TDD
//
//  Created by Vito Borghi on 25/10/2023.
//

import Foundation

struct ViewModel {    
    
    func userValidation(for user: User){
        let userIsValid = doesUsernameExistInDatabase(for: user.username)
        let passwordIsCorrect = isPasswordCorrect(forUser: user)
    }
    
    func isPasswordCorrect(forUser user: User) -> Bool {
        return true
    }

    func createAccount(new) {
        //save to db
    }
    func doesUsernameExistInDatabase(for username: String) -> Bool{
        //check if user exists in db
        return true
    }
    func newPasswordCheck(_ password: String) -> Bool{
        //password validation for TDD
        return true
    }
    
}
