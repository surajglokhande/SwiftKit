//
//  firstViewController.swift
//  SwiftKit
//
//  Created by Suraj Lokhande on 25/03/18.
//  Copyright © 2018 Suraj Technologies. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {
    
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var txtInput: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        btnNext.addTarget(self, action: #selector(nextClick(sender:)), for: .touchUpInside)
        
    }
    
    @objc func nextClick(sender : Any) -> () {
        guard self.txtInput.text != "" else {
            return
        }
        performSegue(withIdentifier: "segueFirstToSecond", sender: nil)
    }

    @IBAction func unwindTofirst(segue : UIStoryboardSegue) {
            print("first")
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let controller = segue.destination as? SecondViewController {
           controller.name = self.txtInput.text
        }
        
    }
    

}
