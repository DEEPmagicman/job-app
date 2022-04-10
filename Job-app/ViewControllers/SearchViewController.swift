//
//  SearchViewController.swift
//  Job-app
//
//  Created by MAC on 10/04/22.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var recentSearchTable: UITableView!
    
    private let demoRecentSearch = ["Microsoft", "Google", "Amazon", "Apple"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.searchView.layer.cornerRadius = 25
    }

}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.demoRecentSearch.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecentSearchCell") as! RecentSearchCell
        cell.searchLbl.text = self.demoRecentSearch[indexPath.row]
        return cell
    }
}
