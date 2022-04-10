//
//  LoginViewController.swift
//  Job-app
//
//  Created by MAC on 09/03/22.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onClickLogin(_ sender: Any) {
        let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: String(describing: HomeTabBar.self)) as! HomeTabBar
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
