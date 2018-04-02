//
//  SecondViewController.swift
//  SwiftKit
//
//  Created by Suraj Lokhande on 25/03/18.
//  Copyright © 2018 Suraj Technologies. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var btnExit: UIButton!
    
    var name : String? = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let _name = name {
            self.lblText.text = _name
        }

        //btnExit.addTarget(self, action: #selector(backToRoot(sender:)), for: .touchUpInside)
    }
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {
        //
    }
    
    
    
    @objc func backToRoot(sender : Any) {
        //self.navigationController?.popToRootViewController(animated: true)
    }


}
