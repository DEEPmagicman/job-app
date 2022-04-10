//
//  CompanyCell.swift
//  Job-app
//
//  Created by Square Infosoft on 10/04/22.
//

import UIKit

class CompanyCell: UITableViewCell {

    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var requirementLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 25
    }

}
