//
//  CategoryCollectionViewCell.swift
//  Taskly
//
//  Created by PCS213 on 05/07/22.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

}

enum CategorySelection: String, CaseIterable
{
    case development = "Development"
    case research = "Research"
    case design = "Design"
    case backend = "BackEnd"
    case frontend = "FrontEnd"
}
