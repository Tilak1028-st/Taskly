//
//  NavigationBar.swift
//  Taskly
//
//  Created by PCS213 on 05/07/22.
//

import UIKit

class NavigationBar: UIView
{
    
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var subLeftImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commitInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commitInit()
    }
    
    private func commitInit()
    {
        Bundle.main.loadNibNamed("NavigationBar", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
}
