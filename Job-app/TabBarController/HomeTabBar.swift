//
//  HomeTabBar.swift
//  Job-app
//
//  Created by MAC on 10/04/22.
//

import UIKit

class HomeTabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Network.getRequest(APIBuilder.userURL(id: "\(UserDefault.shared.user?.id ?? -1)"), params: nil, headers: nil) { (response) in
            guard let responseDic = response as? NSDictionary, let phone = responseDic["phone_number"] as? Int, let address = responseDic["address"] as? String, let name = responseDic["full_name"] as? String else {
                return
            }
            UserDefault.shared.user?.name = name
            UserDefault.shared.user?.phone = "\(phone)"
            UserDefault.shared.user?.address = address
        } failure: { (error) in
            print(error?.localizedDescription ?? "error")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
}
