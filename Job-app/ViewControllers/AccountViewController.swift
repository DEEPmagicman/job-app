//
//  AccountViewController.swift
//  Job-app
//
//  Created by MAC on 10/04/22.
//

import UIKit

class AccountViewController: UIViewController {

    @IBOutlet weak var appliedView: UIView!
    @IBOutlet weak var settingView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.appliedView.layer.cornerRadius = 15
        self.settingView.layer.cornerRadius = 15
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.onClickApplied))
        self.appliedView.isUserInteractionEnabled = true
        self.appliedView.addGestureRecognizer(tap)
        
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(self.onClickSetting))
        self.settingView.isUserInteractionEnabled = true
        self.settingView.addGestureRecognizer(tap2)
    }
    
    @objc private func onClickApplied(sender:UITapGestureRecognizer) {
        
    }
    
    @objc private func onClickSetting(sender:UITapGestureRecognizer) {
        let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: String(describing: SettingViewController.self)) as! SettingViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
