//
//  LoginViewController.swift
//  Job-app
//
//  Created by MAC on 09/03/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
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
        if self.emailTextField.text == "" || self.passwordTextField.text == "" {
            Alert.show("Empty Field", "Please field every field")
            return
        }
        
        let param = ["email": self.emailTextField.text,
                     "password": self.passwordTextField.text]
        Network.postRequest(APIBuilder.loginURL, params: param as [String : Any], headers: nil) { (response) in
            
            guard let responseDic = response as? NSDictionary, let tokens = responseDic["tokens"] as? String, let id = responseDic["id"] as? Int else {
                return
            }
            UserDefaults().set(id, forKey: "userId")
            UserDefault.shared.user = User(id: id, name: "", email: self.emailTextField.text ?? "", phone: "", address: "")
            
            let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: String(describing: HomeTabBar.self)) as! HomeTabBar
            self.navigationController?.pushViewController(vc, animated: true)
        } failure: { (error) in
            print("error")
            Alert.show("Error", "Please check credential and try again")
        }
    }
}
