//
//  ViewController.swift
//  Gambling Simulator
//
//  Created by Theodore Lawson on 10/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var chanceField: UITextField!
    @IBOutlet var startAmountField: UITextField!
    @IBOutlet var costField: UITextField!
    @IBOutlet var rewardField: UITextField!
    @IBOutlet var button: UIButton!
    @IBOutlet var outputLabel: UILabel!
    @IBOutlet var tap: UITapGestureRecognizer!
    
    @IBAction func buttonTapped() {
        
        let game = Game(name: nameField.text!, chance: chanceField.text!, startAmount: startAmountField.text!, cost: costField.text!, reward: rewardField.text!)
        
        outputLabel.text = game.print()
    }
    
    @IBAction func endEditing() {
        view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        //test
    }
}

