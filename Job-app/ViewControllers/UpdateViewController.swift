//
//  UpdateViewController.swift
//  Job-app
//
//  Created by MAC on 10/04/22.
//

import UIKit

class UpdateViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameTextField.text = UserDefault.shared.user?.name
        self.addressTextField.text = UserDefault.shared.user?.address
        self.phoneTextField.text = UserDefault.shared.user?.phone
    }
    
    @IBAction func onClickUpdate(_ sender: Any) {
        let param = ["full_name": self.nameTextField.text ?? "",
                     "phone_number": Int(self.phoneTextField.text ?? "") ?? 0,
                     "address": self.addressTextField.text ?? ""] as [String : Any]
        Network.postRequest(APIBuilder.userURL(id: "\(UserDefault.shared.user?.id ?? -1)"), params: param, headers: nil) { (response) in
            
            guard let responseDic = response as? NSDictionary, let phone = responseDic["phone_number"] as? Int, let address = responseDic["address"] as? String, let name = responseDic["full_name"] as? String else {
                return
            }
            UserDefault.shared.user?.name = name
            UserDefault.shared.user?.phone = "\(phone)"
            UserDefault.shared.user?.address = address
            self.navigationController?.popViewController(animated: true)
        } failure: { (error) in
            Alert.show("Error", "Something went wrong, try again!")
        }
    }
}
