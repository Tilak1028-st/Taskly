//
//  NewTaskViewController.swift
//  Taskly
//
//  Created by PCS213 on 05/07/22.
//

import UIKit

class NewTaskViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryCollectionView.register(UINib(nibName: StringConstant.categoryCollectionViewcell, bundle: nil), forCellWithReuseIdentifier: StringConstant.categoryCollectionViewcell)
        
    }
    

}


extension NewTaskViewController: UICollectionViewDelegate, UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = categoryCollectionView.dequeueReusableCell(withReuseIdentifier: StringConstant.categoryCollectionViewcell, for: indexPath) as! CategoryCollectionViewCell
        return item
    }
    
    
}
