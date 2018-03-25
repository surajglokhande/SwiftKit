//
//  HomeViewController.swift
//  SwiftKit
//
//  Created by Suraj Lokhande on 25/03/18.
//  Copyright © 2018 Suraj Technologies. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    let homeArray = ["Navigation Using segue"]
    
    @IBOutlet weak var homeTableView: UITableView! = {
        let tableview = UITableView()
        tableview.separatorStyle = .none
        tableview.allowsSelection = true
        return tableview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.homeTableView.delegate = self
        self.homeTableView.dataSource = self
        
        self.homeTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.homeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.HomeCellID, for: indexPath)
        cell.textLabel?.text = self.homeArray[indexPath.row]
        return cell
    }

}
