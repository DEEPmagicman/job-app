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
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String(describing: HomeViewController.self)) as! HomeViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
