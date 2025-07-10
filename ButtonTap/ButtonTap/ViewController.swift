//
//  ViewController.swift
//  ButtonTap
//
//  Created by Mariana Montoya on 7/9/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet private(set) var button: UIButton!
    
    @IBAction private func buttonTap() {
        print(">> Button was tapped")
    }


}

