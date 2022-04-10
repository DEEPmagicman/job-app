//
//  HomeTabBar.swift
//  Job-app
//
//  Created by Square Infosoft on 10/04/22.
//

import UIKit

class HomeTabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
}
