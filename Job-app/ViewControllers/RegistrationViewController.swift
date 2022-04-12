//
//  RegistrationViewController.swift
//  Job-app
//
//  Created by MAC on 09/03/22.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var rePasswordTextField: UITextField!
    @IBOutlet weak var addressTextView: UITextView!
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
        
        if self.nameTextField.text == "" || self.emailTextField.text == "" || self.phoneTextField.text == "" || self.passwordTextField.text == "" || self.rePasswordTextField.text == "" || self.addressTextView.text == "" {
            Alert.show("Empty Field", "Please field every field")
            return
        }
        
        if self.passwordTextField.text != self.rePasswordTextField.text {
            Alert.show("Error", "Please make sure password and re-password are same")
            return
        }
        
        let param = ["email": self.emailTextField.text ?? "",
                     "full_name": self.nameTextField.text ?? "",
                     "phone_number": Int(self.phoneTextField.text ?? "") ?? 0,
                     "password": self.passwordTextField.text ?? "",
                     "password2": self.rePasswordTextField.text ?? "",
                     "address": self.addressTextView.text ?? ""] as [String : Any]
        Network.postRequest(APIBuilder.registerURL, params: param, headers: nil) { (response) in
            let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: String(describing: HomeTabBar.self)) as! HomeTabBar
            self.navigationController?.pushViewController(vc, animated: true)
        } failure: { (error) in
            Alert.show("Error", "Please check all info and try again")
        }
    }
}
