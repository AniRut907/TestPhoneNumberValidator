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
        let podBundle = Bundle(for: EmailValidateViewController.self)
        if let bundleURL = podBundle.url(forResource: "TestPhoneNumberValidator", withExtension: "bundle"){
            if let bundle = Bundle(url: bundleURL) {
                let storyBoard = UIStoryboard.init(name: "PhoneValidator", bundle: bundle)
                if let vc = storyBoard.instantiateViewController(withIdentifier: "EmailValidateViewController") as? EmailValidateViewController {
                    navigationController?.pushViewController(vc, animated: true)
                }
            }
        }
    }
}
