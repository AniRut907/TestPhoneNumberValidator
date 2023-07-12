//
//  PhoneValidateViewController.swift
//  TestPhoneNumberValidator
//
//  Created by Aniket Lokhande on 11/07/23.
//

import UIKit

open class PhoneValidateViewController: UIViewController {

    open override func viewDidLoad() {
        super.viewDidLoad()
        showMessage()
        // Do any additional setup after loading the view.
    }
    
    func showMessage(){
        print("Success")
    }
    @IBAction func navigateOnEmailValidator(_ sender: Any) {
        let controller = Manager().navigationController
        let storyBoard = UIStoryboard.init(name: "PhoneValidator", bundle: self.viewbundle)
        if let vc = storyBoard.instantiateViewController(withIdentifier: "EmailValidateViewController") as? EmailValidateViewController {
            controller.pushViewController(vc, animated: true)
        }
    }
}
extension UIViewController {
    func getBundle() -> Bundle {
        let podBundle = Bundle(for: Self.self)
        if let bundleURL = podBundle.url(forResource: "TestPhoneNumberValidator", withExtension: "bundle"){
            if let bundle = Bundle(url: bundleURL) {
                return bundle
            }
        }
        return Bundle()
    }
}
