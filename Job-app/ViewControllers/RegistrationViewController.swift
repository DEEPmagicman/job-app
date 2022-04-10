//
//  RegistrationViewController.swift
//  Job-app
//
//  Created by MAC on 09/03/22.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet weak var loginHereLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.onClickLogin))
        self.loginHereLbl.isUserInteractionEnabled = true
        self.loginHereLbl.addGestureRecognizer(tap)
    }
    
    @objc private func onClickLogin(sender:UITapGestureRecognizer) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String(describing: LoginViewController.self)) as! LoginViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onClickRegistration(_ sender: Any) {
        let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: String(describing: HomeTabBar.self)) as! HomeTabBar
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
