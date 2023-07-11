//
//  Manager.swift
//  TestPhoneNumberValidator
//
//  Created by Aniket Lokhande on 11/07/23.
//

import Foundation
import UIKit
public class Manager {
    
    public init() { }
    
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
        let controller = UIStoryboard(name: "PhoneValidator", bundle: nil).instantiateViewController(withIdentifier: "PhoneValidateViewController")
        navigationController.pushViewController(controller, animated: true)
    }
    
}
