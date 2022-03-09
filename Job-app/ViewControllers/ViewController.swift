//
//  ViewController.swift
//  Job-app
//
//  Created by MAC on 08/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onClickLogin(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String(describing: LoginViewController.self)) as! LoginViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func onClickRegistration(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String(describing: RegistrationViewController.self)) as! RegistrationViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

