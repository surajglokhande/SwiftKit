//
//  AddRecordViewController.swift
//  SwiftKit
//
//  Created by Suraj Lokhande on 02/04/18.
//  Copyright © 2018 Suraj Technologies. All rights reserved.
//

import UIKit

class AddRecordViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate {

    
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    
    
    let agePickerView = { () -> UIPickerView in
        let picker = UIPickerView()
        picker.showsSelectionIndicator = true
        return picker
    }()
    let addressPickerView = { () -> UIPickerView in
        let picker = UIPickerView()
        picker.showsSelectionIndicator = true
        return picker
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        designSetUp()
    }
    
    //MARK: - UIPicker View Data Source Methods
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 0
    }
    //MARK: - Private Methods
    
    func designSetUp() {
        
        txtAge.inputView = agePickerView
        txtAge.delegate = self
        agePickerView.delegate = self
        agePickerView.dataSource = self
        
        txtAddress.inputView = addressPickerView
        txtAddress.delegate = self
        addressPickerView.delegate = self
        addressPickerView.dataSource = self
        
    }
}
