//
//  NewTaskViewController.swift
//  Taskly
//
//  Created by PCS213 on 05/07/22.
//

import UIKit

class NewTaskViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var timePicker: UIDatePicker!
    @IBOutlet weak var dateTextField: CustomTextField!
    @IBOutlet weak var dateImageView: UIImageView!
    @IBOutlet weak var endtimeDropdownImageView: UIImageView!
    @IBOutlet weak var startTimeDropdownImageView: UIImageView!
    @IBOutlet weak var endTimeTextField: CustomTextField!
    @IBOutlet weak var startTimeTextField: CustomTextField!
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var navBar: NavigationBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpview()
        dateAndTimePickerSetup()
        
    }
    
//MARK: -Function to setup picker for date and time.
    
    private func setUpview()
    {
        categoryCollectionView.register(UINib(nibName: StringConstant.categoryCollectionViewcell, bundle: nil), forCellWithReuseIdentifier: StringConstant.categoryCollectionViewcell)
        self.navigationItem.setHidesBackButton(true, animated: false)
        self.navBar.subLeftImageView.isHidden = true
        self.navBar.leftImageView.image = UIImage(named: "less-than")
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(popNewtaskVc))
        tapRecognizer.numberOfTapsRequired = 1
        
        self.navBar.leftImageView.addGestureRecognizer(tapRecognizer)
        
    }
    
    
    @objc func popNewtaskVc()
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    private func dateAndTimePickerSetup()
    {
        dateTextField.inputView = datePicker
        dateTextField.delegate = self
        datePicker.datePickerMode = .date
        
        startTimeTextField.inputView = timePicker
        startTimeTextField.delegate = self
        timePicker.datePickerMode = .time
        
        endTimeTextField.inputView = timePicker
        endTimeTextField.delegate = self
        timePicker.datePickerMode = .time
    }
    
    
    @IBAction func timeChange(_ sender: UIDatePicker)
    {
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = DateFormatter.Style.short
        let strTime = dateFormatter.string(from: timePicker.date)
        if sender.tag == 0
        {
            startTimeTextField.text = "\(strTime)"
        }
        else if sender.tag == 1
        {
            endTimeTextField.text = "\(strTime)"
        }
    }
    
    
    @IBAction func dateChanged(_ sender: Any)
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d, MMMM yyyy"
        let strDate = dateFormatter.string(from: datePicker.date)
        dateTextField.text = "\(strDate)"
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == startTimeTextField
        {
            timePicker.tag = 0
        }
        else if textField == endTimeTextField
        {
            timePicker.tag = 1
        }
    }
    
}


extension NewTaskViewController: UICollectionViewDelegate, UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = categoryCollectionView.dequeueReusableCell(withReuseIdentifier: StringConstant.categoryCollectionViewcell, for: indexPath) as! CategoryCollectionViewCell
        item.categoryButton.setTitle(CategorySelection.allCases[indexPath.row].rawValue, for: .normal)
        return item
    }
}



