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
        if UserDefaults().value(forKey: "userId") != nil {
            UserDefault.shared.user = User(id: UserDefaults().value(forKey: "userId") as? Int ?? -1, name: "", email: "", phone: "", address: "")
            let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: String(describing: HomeTabBar.self)) as! HomeTabBar
            self.navigationController?.pushViewController(vc, animated: true)
        }
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

