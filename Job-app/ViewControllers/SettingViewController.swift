//
//  SettingViewController.swift
//  Job-app
//
//  Created by MAC on 10/04/22.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func onClickEdit(_ sender: Any) {
        let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: String(describing: UpdateViewController.self)) as! UpdateViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onClickSignOut(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
