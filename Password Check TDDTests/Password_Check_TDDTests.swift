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
        
        XCTAssertEqual(vm.newPasswordCheck("test"), "Password must be at least 8 characters")
    }


}
