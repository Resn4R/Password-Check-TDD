//
//  Password_Check_TDDTests.swift
//  Password Check TDDTests
//
//  Created by Vito Borghi on 25/10/2023.
//

import XCTest
@testable import Password_Check_TDD

final class Password_Check_TDDTests: XCTestCase {
    
    //1. The password must be at least 8 characters long. If it is not met, then the following error message should be returned: “Password must be at least 8 characters”
    func testPasswordTooShort() {
        let vm = ViewModel()
        
        XCTAssertEqual(vm.newPasswordCheck("test"), "Password must be at least 8 characters\nThe password must contain at least 2 numbers\npassword must contain at least one capital letter\npassword must contain at least one special character")
    }
    
    //2. The password must contain at least 2 numbers. If it is not met, then the following error message should be returned: “The password must contain at least 2 numbers”
    func testContainsNumbers() {
        let vm = ViewModel()
        
        XCTAssertEqual(vm.newPasswordCheck("test2test"), "The password must contain at least 2 numbers\npassword must contain at least one capital letter\npassword must contain at least one special character")
    }
    
    //3. The validation function should handle multiple validation errors.
    //For example, “somepassword” should an error message: “Password must be at least 8 characters\nThe password must contain at least 2 numbers”
    func testPasswordInvalidForMultipleReasons() {
        let vm = ViewModel()
        
        XCTAssertEqual(vm.newPasswordCheck("somepassword"), "The password must contain at least 2 numbers\npassword must contain at least one capital letter\npassword must contain at least one special character")
    }
    
    //4. The password must contain at least one capital letter. If it is not met, then the following error message should be returned: “password must contain at least one capital letter”
    func testPasswordDoesNotContainCapitalLetter() {
        let vm = ViewModel()
        
        XCTAssertEqual(vm.newPasswordCheck("failthetestbecausenocapitalletters123123"), "password must contain at least one capital letter\npassword must contain at least one special character")
    }
    
    //5. The password must contain at least one special character. If it is not met, then the following error message should be returned: “password must contain at least one special character”
    func testPasswordDoesNotContainSpecialChar(){
        let vm = ViewModel()
        
        XCTAssertEqual(vm.newPasswordCheck("teteteteetetteetetetetetette123123123123ASD"), "password must contain at least one special character")
    }
}
