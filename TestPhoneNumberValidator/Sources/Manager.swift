//
//  Manager.swift
//  TestPhoneNumberValidator
//
//  Created by Aniket Lokhande on 11/07/23.
//

import Foundation
import UIKit
open class Manager {
    public var navigationController = UINavigationController()
    public init() { }
    //public let shared = Manager()
    
    public func createManager(){
        print("Manager created successfully!")
        print("Thank you so much")
        print("git hub integration completed")
        print("added email validation")
        
        
    }
    public func isValidPhone(phone: String) -> Bool {
        let phoneRegex = "^[0-9+]{0,1}+[0-9]{5,16}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
        return phoneTest.evaluate(with: phone)
    }
    
    public func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    public func navigateOnPhoneValidateController(navigationController: UINavigationController){
        self.navigationController = navigationController
        let podBundle = Bundle(for: PhoneValidateViewController.self)
        if let bundleURL = podBundle.url(forResource: "TestPhoneNumberValidator", withExtension: "bundle"){
            if let bundle = Bundle(url: bundleURL) {
                let storyBoard = UIStoryboard.init(name: "PhoneValidator", bundle: bundle)
                if let vc = storyBoard.instantiateViewController(withIdentifier: "PhoneValidateViewController") as? PhoneValidateViewController {
                    navigationController.pushViewController(vc, animated: true)
                }
            }
        }
    }
}
extension UIViewController {
    var viewbundle: Bundle {
        
        let podBundle = Bundle(for: Self.self)
        let bundleURL = podBundle.url(forResource: "TestPhoneNumberValidator", withExtension: "bundle")!
        
        if let bundle = Bundle(url: bundleURL) {
            return bundle
        } else {
            return Bundle(identifier: Bundle.main.bundleIdentifier!)!
        }
        
    }
}
