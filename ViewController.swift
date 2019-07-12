//
//  ViewController.swift
//  emojional
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Kode with Klossy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let Emoji = ["🤠": "YEE HAWWWWW", "🙌": "GET ALONG LITTLE DOGGIE","🏇": "I LASSO YOU!", "📦":"FOUR SHIFTER GEARBOX","🍝":"A BOWL OF SPAGHETTI"]
    let customMessage =
        ["YEE HAWWWWW":[ "YEE HAWWWWW", "YEE HAW"],
        "GET ALONG LITTLE DOGGIE":["GET OFF MY PORCH","GET OFF MY PORCH!"],
        "I LASSO YOU!":["YEE HAW","I LASSO YOU BUCKAROO!"],
        "FOUR SHIFTER GEARBOX":["ONE TWO THREE FOUR","ONE TWO THREE FOUR!"],
        "A BOWL OF SPAGHETTI":["MAYBE TOMORROW","MAYBE TOMORROW!"]
    ]
//        "doododoododo","FOUR SHIFTER GEAR BOX":"ONE TWO THREE FOUR","A BOWL OF SPAGHETTI":"MAYBE TOMORROW"]"GET ALONG LITTLE DOGGIE"
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func showMessage(sender: UIButton) {
        let random:UInt32 = arc4random_uniform(2)
        let selectedEmoji = sender.titleLabel?.text
        let emojiMessage = customMessage[Emoji[selectedEmoji!]!]?[Int(random)]
        let alertController = UIAlertController(title: Emoji[selectedEmoji!], message:emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "next", style: UIAlertAction.Style.default, handler: nil))
   
        present(alertController, animated: true, completion: nil)
  
    }
}
