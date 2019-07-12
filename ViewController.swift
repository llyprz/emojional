//
//  ViewController.swift
//  emojional
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Kode with Klossy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "YEEEEEE", message:"HAWWWWW", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "YEE HAW MATE", style: UIAlertAction.Style.default, handler: nil))
   
        present(alertController, animated: true, completion: nil)
  
    }
}
