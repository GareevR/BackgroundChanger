//
//  ViewController.swift
//  MyName
//
//  Created by Macservis on 16.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet var background: UIView!
    
    @IBAction func changeLabelText(_ sender: UIButton) {
        label.text = "\(sender.titleLabel!.text!) button was pressed"
        if sender.titleLabel?.text == "Orange" {
            background.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        }
        else {
            background.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        }
    }
    
    @IBAction func showMessage() {
        let alertController = UIAlertController(
            title: "Welcome to BackgroundChanger App",
            message: "Choose background color",
            preferredStyle: UIAlertController.Style.alert
        )
        // pop-up window
        alertController.addAction(
            UIAlertAction(
                title: "White",
                style: UIAlertAction.Style.cancel,
                handler: { _ in
                    self.background.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                })
        )
        alertController.addAction(
            UIAlertAction(
                title: "Green",
                style: UIAlertAction.Style.destructive,
                handler: { _ in
                    self.background.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
                })
        )
        
        self.present(alertController, animated: true, completion: nil)
        print("You pressed \"Hello World!\" button")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        background.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
