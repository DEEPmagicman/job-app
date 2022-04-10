//
//  UpdateViewController.swift
//  Job-app
//
//  Created by Square Infosoft on 10/04/22.
//

import UIKit

class UpdateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onClickUpdate(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
