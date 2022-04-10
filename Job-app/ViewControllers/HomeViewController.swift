//
//  HomeViewController.swift
//  Job-app
//
//  Created by MAC on 09/03/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CompanyCell") as! CompanyCell
        cell.selectionStyle = .none
        cell.layer.borderColor = UIColor(named: "PrimaryBackground")?.cgColor
        cell.layer.borderWidth = 10
        return cell
    }
}
