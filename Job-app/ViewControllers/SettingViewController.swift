//
//  SettingViewController.swift
//  Job-app
//
//  Created by MAC on 10/04/22.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var userNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.userNameLbl.text = UserDefault.shared.user?.name ?? ""
    }
    
    @IBAction func onClickEdit(_ sender: Any) {
        let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: String(describing: UpdateViewController.self)) as! UpdateViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onClickSignOut(_ sender: Any) {
        UserDefaults().set(nil, forKey: "userId")
        self.navigationController?.popToRootViewController(animated: true)
    }
}
