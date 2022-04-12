//
//  LoginViewController.swift
//  Job-app
//
//  Created by MAC on 09/03/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var registerHereLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.onClickRegister))
        self.registerHereLbl.isUserInteractionEnabled = true
        self.registerHereLbl.addGestureRecognizer(tap)
    }
    
    @objc private func onClickRegister(sender:UITapGestureRecognizer) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String(describing: RegistrationViewController.self)) as! RegistrationViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onClickLogin(_ sender: Any) {
        let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: String(describing: HomeTabBar.self)) as! HomeTabBar
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
