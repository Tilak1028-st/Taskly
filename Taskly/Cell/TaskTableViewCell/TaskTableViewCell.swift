//
//  TaskTableViewCell.swift
//  Taskly
//
//  Created by PCS213 on 05/07/22.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    @IBOutlet weak var detailView: UIView!
    @IBOutlet weak var taskcellview: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        detailView.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
