//
//  NavigationBar.swift
//  Taskly
//
//  Created by PCS213 on 05/07/22.
//

import UIKit

class NavigationBar: UIView
{
    
    @IBOutlet weak var addView: UIView!
    @IBOutlet weak var leftView: UIView!
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var rightView: UIView!
    @IBOutlet weak var subLeftImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    
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
        
        self.rightView.clipsToBounds = true
        self.rightView.layer.cornerRadius = 40
        self.rightView.layer.maskedCorners = [.layerMinXMaxYCorner]
        
//        self.addView.clipsToBounds = true
//        self.addView.layer.cornerRadius = 60
//        self.addView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMinYCorner]
        
        self.leftView.clipsToBounds = true
        self.leftView.layer.cornerRadius = 40
        self.leftView.layer.maskedCorners = [.layerMaxXMinYCorner]
    }
}
