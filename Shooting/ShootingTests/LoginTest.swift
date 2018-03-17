//
//  LoginTest.swift
//  ShootingTests
//
//  Created by Kang Zhe  on 17/03/2018.
//  Copyright © 2018 MC. All rights reserved.
//

import Quick
import Nimble


class LoginTest: QuickSpec {
    
    override func spec() {
        describe("When the user press login button") {
            let controller = LoginViewController()
            
            it("should make sure that user name is not empty") {
                expect(controller.isValid(username: "")) == false
            }
            
            it("should make sure that user name has less than 10 characters") {
                expect(controller.isValid(username: "Dumbledore")) == false
                expect(controller.isValid(username: "Veldemort")) == true
            }
        }
    }
}
