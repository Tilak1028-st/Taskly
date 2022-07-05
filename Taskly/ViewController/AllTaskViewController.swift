//
//  AllTaskViewController.swift
//  Taskly
//
//  Created by PCS213 on 05/07/22.
//

import UIKit

class AllTaskViewController: UIViewController {

    @IBOutlet weak var dateCollectionView: UICollectionView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var taskTableView: UITableView!
    @IBOutlet weak var myTaskView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
    }
    
//MARK: - Set Initial view
    private func setUpView()
    {
        taskTableView.scrollIndicatorInsets = UIEdgeInsets(top: 0,left: 0,bottom: 0,right: taskTableView.bounds.size.width-5);
        taskTableView.indicatorStyle = UIScrollView.IndicatorStyle.black
        taskTableView.register(UINib(nibName: StringConstant.tasktableViewcell, bundle: nil), forCellReuseIdentifier: StringConstant.tasktableViewcell)
        dateCollectionView.register(UINib(nibName: StringConstant.dateCollectionViewcell, bundle: nil), forCellWithReuseIdentifier: StringConstant.dateCollectionViewcell)
        taskTableView.separatorColor = UIColor.clear
    }
    
//MARK: - Function to go to NewTaskVc.
    @IBAction func createNewTask(_ sender: UIButton) {
        let newtaskVc = self.storyboard?.instantiateViewController(withIdentifier: StringConstant.newtaskVc) as! NewTaskViewController
        self.navigationController?.pushViewController(newtaskVc, animated: true)
    }
    
}

//MARK: - TasktableViewCell Delegate and Datasource methods.
extension AllTaskViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = taskTableView.dequeueReusableCell(withIdentifier: StringConstant.tasktableViewcell, for: indexPath) as! TaskTableViewCell
      
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       175
    }
}

// MARK: - DateCollectionView Delegate and Datasource methods.

extension AllTaskViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        30
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = dateCollectionView.dequeueReusableCell(withReuseIdentifier: StringConstant.dateCollectionViewcell, for: indexPath) as! DateCollectionViewCell
        item.layer.cornerRadius = 10
        return item
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: 60, height: 60)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
    {
        return 0

    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    {
        return 10

    }
    
}
