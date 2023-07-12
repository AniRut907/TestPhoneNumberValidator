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
        let controller = Manager().shared.navigationController
        let storyBoard = UIStoryboard.init(name: "PhoneValidator", bundle: nil)
        if let vc = storyBoard.instantiateViewController(withIdentifier: "EmailValidateViewController") as? EmailValidateViewController {
            controller.pushViewController(vc, animated: true)
        }
    }
}
